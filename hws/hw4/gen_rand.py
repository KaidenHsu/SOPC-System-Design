import random
import sys
import math

# Read M and N from command line arguments (Make will pass them)
if len(sys.argv) >= 3:
    M = int(sys.argv[1])
    N = int(sys.argv[2])
else:
    M = 16  
    N = 3

# Hardware Accelerator Maximums
MAX_M_HW = 64
MAX_N_HW = 64
NUM_MPLIERS = 16
DWIDTH = 4

# --- DYNAMIC HARDWARE SIZING ---
# Calculate the exact hex string lengths based on Verilog parameters
INPUT_HEX_CHARS = NUM_MPLIERS # 16 INT4s = 16 hex characters per SRAM line

# Match Verilog output: wdata = 2*DWIDTH + $clog2(NUM_MPLIERS) = 8 + 4 = 12 bits
ACC_WIDTH_BITS = (2 * DWIDTH) + int(math.log2(NUM_MPLIERS)) 
OUTPUT_HEX_CHARS = ACC_WIDTH_BITS // 4 # 12 bits / 4 = 3 hex characters
ACC_MASK = (1 << ACC_WIDTH_BITS) - 1   # Generates 0xFFF dynamically

# Calculate physical memory depth
Z_MAX = MAX_M_HW // NUM_MPLIERS
MAX_INPUT_LINES = Z_MAX + (Z_MAX * MAX_N_HW) 
MAX_GOLDEN_LINES = MAX_N_HW                  

MIN_VAL = -8
MAX_VAL = 7 

vector = [] 
matrix = [[0 for _ in range(N)] for _ in range(M)] 
golden = [0 for _ in range(N)] 

flat_inputs = []

# generate vector
for _ in range(M):
    rand_num = random.randint(MIN_VAL, MAX_VAL)
    vector.append(rand_num)
    flat_inputs.append(rand_num)

# generate matrix
for i in range(M):
    for j in range(N):
        matrix[i][j] = random.randint(MIN_VAL, MAX_VAL)

# Flatten the matrix COLUMN by COLUMN (transpose)
for i in range(N):
    for j in range(M):
        flat_inputs.append(matrix[j][i])

# ==========================================
# 1. HARDWARE I/O BOUNDARY: Write Inputs
# ==========================================
lines_written = 0
with open("input_image.mem", "w") as f:
    line_string = ""
    for idx, val in enumerate(flat_inputs):
        hex_val = val & 0xF
        line_string += f"{hex_val:01x}"
        
        # Wrap the line dynamically based on the SRAM data bus width
        if (idx + 1) % NUM_MPLIERS == 0:
            f.write(f"{line_string}\n")
            lines_written += 1
            line_string = ""
            
    # PAD REMAINING INPUT MEMORY WITH ZEROS
    while lines_written < MAX_INPUT_LINES:
        f.write("0" * INPUT_HEX_CHARS + "\n") 
        lines_written += 1

# ==========================================
# 2. SOFTWARE MATH LAYER: Golden Calculation
# ==========================================
for i in range(N):
    for j in range(M):
        golden[i] += vector[j] * matrix[j][i]

# ==========================================
# 3. HARDWARE I/O BOUNDARY: Write Outputs
# ==========================================
golden_written = 0
with open("golden.mem", "w") as f:
    for i in range(N):
        # Dynamically cast the sum into the exact Verilog accumulator width
        hex_golden = golden[i] & ACC_MASK
        f.write(f"{hex_golden:0{OUTPUT_HEX_CHARS}x}\n")
        golden_written += 1
        
    # PAD REMAINING OUTPUT MEMORY WITH ZEROS
    while golden_written < MAX_GOLDEN_LINES:
        f.write("0" * OUTPUT_HEX_CHARS + "\n")
        golden_written += 1

print(f"Packed SIGNED INT4 vector ({M}) and matrix ({M}x{N}) generated successfully!")
print(f"Total active 64-bit input lines: {len(flat_inputs) // NUM_MPLIERS}")
print(f"Total padded input lines to satisfy HW: {MAX_INPUT_LINES}")

# ==========================================
# Terminal Visualization (Aligned Printing)
# ==========================================
if M <= 32 and N <= 8:
    print(f"\nVector (1 x {M}):")
    print("[" + ", ".join([f"{v:>3}" for v in vector]) + "]")

    print(f"\nMatrix ({M} x {N}):")
    for i in range(M):
        print("[" + ", ".join([f"{val:>3}" for val in matrix[i]]) + "]")

    print(f"\nGolden Product (Full Precision Math):")
    print("[" + ", ".join([f"{g:>6}" for g in golden]) + "]")
else:
    print(f"\n--- Matrix too large for terminal visualization ---")
    
# ==========================================
# 4. Generate C Code Arrays for Vitis/SDK
# ==========================================
print("\n" + "="*50)
print("  COPY THE CODE BELOW INTO YOUR C PROGRAM")
print("="*50 + "\n")

# 從剛寫好的 input_image.mem 讀取資料
c_high_array = []
c_low_array = []
with open("input_image.mem", "r") as f:
    for line in f:
        line = line.strip()
        # 只提取有效資料，過濾掉全 0 的 padding 行
        if line != "0" * INPUT_HEX_CHARS:
            # 64-bit Hex 字串：前 8 個字元是 High，後 8 個字元是 Low
            high_hex = line[:8]
            low_hex = line[8:]
            c_high_array.append(f"0x{high_hex}")
            c_low_array.append(f"0x{low_hex}")

# 印出 C 陣列格式
print(f"// C Arrays for M={M}, N={N}")
print(f"u32 input_data_high[] = {{{', '.join(c_high_array)}}};")
print(f"u32 input_data_low[]  = {{{', '.join(c_low_array)}}};")
print(f"int golden_data[]     = {{{', '.join(map(str, golden))}}};\n")
print("="*50)
