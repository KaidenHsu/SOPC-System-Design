# default parameters
M ?= 16
N ?= 3

all: clean
	@echo "========================================"
	@echo "Running Simulation with M=$(M), N=$(N)"
	@echo "========================================"
	python3 gen_rand.py $(M) $(N)
	@echo ""
	@echo ""
	@echo ""
	verilator --sv --binary --timing --trace -DM_SIZE=$(M) -DN_SIZE=$(N) hw2_tb.v hw2.v sram.v VMM.sv
	@echo ""
	@echo ""
	@echo ""
	./obj_dir/Vhw2_tb

clean:
	rm -rf a.out hw2.vcd golden.mem input_image.mem obj_dir/

.PHONY:
	all clean
