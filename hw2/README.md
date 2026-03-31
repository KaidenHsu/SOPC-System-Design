# Hw2. Vector-Matrix Multiplication Accelerator IP Circuit

* at least 16 multiplier units
* vector and matrix sizes must be configurable via input
* input vectors and matrices are stored in OCB

## Usage

1. change Verilator to the simulation tool of your choice
2. remember to pass agguments to M_SIZE and N_SIZE in the Makefile to the design (-D<define_name>=argument for Verilator)
3. enable SystemVerilog compilation if needed (--sv for Verilator)

``` bash
$ make # defaults to M=16, N=3
```

``` bash
$ make M=<16/32/48> N=<(0, 63)> # specify dimensions (1xM) vector x (MxN) matrix
```
