#pragma once

#ifdef __cplusplus
extern "C" {
#endif



#define VMM_VEC_WIDTH 3
#define VMM_MAT_WIDTH 4

typedef float data_t;

// all matrices are stored in row-major format

// vector(1xVMM_VEC_WIDTH)-matrix(VMM_VEC_WIDTHxVMM_MAT_WIDTH) multiplier => returns a 1xVMM_MAT_WIDTH vector
void VMM (data_t *ret, data_t* A, data_t* B);

// general vector(1xS1)-matrix(S1xS2) multiplier => returns a 1xS2 vector
void GVM (data_t *ret, data_t *A, data_t *B, int S1, int S2);

// general matrix(S1xS2)-matrix(S2xS3) multiplier => returns a S1xS3 matrix
void GMM (data_t *ret, data_t *C, data_t *D, int S1, int S2, int S3);

// self-attention
// IN: S1xS2, Wq: S2xS3, Wk: S2xS3, Wv: S2xS4 => returns a S1xS4 matrix
// Q = IN x Wq , K = IN x Wk , V = IN x Wv
// attention(Q, K, V) = (softmax((QxKT)/sqrt(dk)))V
void SATT (data_t *ret, data_t *IN, data_t *Wq, data_t *Wk, data_t *Wv, int S1, int S2, int S3, int S4);



#ifdef __cplusplus
}
#endif
