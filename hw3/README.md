# Hw3. Code Trace: RGB-YUV AMBA 2.0 Conversion IP, AXI-Lite Wrapper

## Task 1: RGB-YUV AMBA 2.0 Conversion IP

### 1.1 Block Diagram

<p align="center">
    <img src="images/Hw3_1_FPGA_TOP.jpg" alt="timing" width="480" align="middle" />
    <img src="images/Hw3_1_MYIP_TOP.jpg" alt="timing" width="480" align="middle" />
</p>
<p align="center">
    <img src="images/Hw3_1_AHBMA_IX.jpg" alt="timing" width="480" align="middle" />
    <img src="images/Hw3_1_APB_IX.jpg" alt="timing" width="480" align="middle" />
</p>

### 1.2 Design Description

* **Core Function:** Performs RGB to YUV conversion using a pre-defined hardware transformation matrix.
* **PPA Optimization:** Employs 1024x scaling and top-bit extraction, allowing the synthesizer to replace costly hardware multipliers with simple 10-bit logical left-shifts to improve area and power efficiency[cite: 166].
* **Data Mapping:** Adds 128 to the U and V output channels to shift the results into entirely positive integer values.
* **AMBA 2.0:** Latches necessary control and address signals from the bus when the condition `ACRegEn = HSELIntMem & HREADYin & HTRANS[1]` evaluates to true.

---

## Task 2: AXI-Lite Wrapper

### 2.1 Block Diagram

<img src="images/hw3_2_block_diagram.jpg" alt="timing" width="480" align="middle" />

### 2.2 Circuit Diagram

<img src="images/Hw3_2_circuit_diagram.jpg" alt="timing" width="480" align="middle" />

### 2.3 Design Description

* **Architecture:** Functions as a memory-mapped AXI4-Lite slave device containing four standard 32-bit readable and writable registers (`slv_reg0` through `slv_reg3`).
* **Write Transactions:** Waits for both `AWVALID` and `WVALID` to be asserted high before latching the address and capturing the write data.
* **Byte-Enable Logic:** Utilizes the `WSTRB` (Write Strobe) signal to update specific bytes individually, preventing the master from unnecessarily overwriting the entire 32-bit register[cite: 177, 264, 265].
* **Read Transactions:** Latches the requested address when `ARVALID` is high, decodes the target register, and returns the payload via `RDATA`.
* **Address Alignment:** Filters out the lower address bits that represent the byte offset using the `ADDR_LSB` parameter, ensuring proper word-aligned register selection.
