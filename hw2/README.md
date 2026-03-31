# Hw2. Vector-Matrix Multiplication Accelerator IP Circuit

## Goal

design an IP accelerator circuit that perfomrs vector-matrix multiplication

## Requirements

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
$ make M=M_SIZE N=N_SIZE
# specify dimensions (1xM) vector x (MxN) matrix
# M = 16, 32, or 48, 0 < N < 64
```
