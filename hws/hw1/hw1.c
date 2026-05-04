#include "hw1.h"
#include <math.h>
#include <string.h>

// vector (1 x VMM_VEC_WIDTH) - matrix (VMM_VEC_WIDTH x VMM_MAT_WIDTH) multiplier => returns a 1 x VMM_MAT_WIDTH vector
void VMM (data_t *ret, data_t* A, data_t* B) {
    for (int i = 0; i < VMM_MAT_WIDTH; i++) {
        for (int j = 0; j < VMM_VEC_WIDTH; j++) {
            // MAC
            ret[i] += A[j] * B[VMM_MAT_WIDTH*j+i];
        }
    }
}

// general vector(1 x S1)-matrix(S1 x S2) multiplier => returns a 1 x S2 vector
void GVM (data_t *ret, data_t *A, data_t *B, int S1, int S2) {
    // initialization
    memset(ret, 0, S2*sizeof(data_t));

    int i;

    for (i = 0; i+VMM_MAT_WIDTH <= S2; i+=VMM_MAT_WIDTH) {
        int j;
        data_t mat[VMM_VEC_WIDTH * VMM_MAT_WIDTH];

        // divide-and-conquer by reusing VMM()
        for (j = 0; j+VMM_VEC_WIDTH <= S1; j+=VMM_VEC_WIDTH) {
            // coalescing the mat matrix
            for (int k = 0; k < VMM_VEC_WIDTH; k++) {
                for (int l = 0; l < VMM_MAT_WIDTH; l++) {
                    // mat[k][l] = B[j+k][i+l]
                    mat[VMM_MAT_WIDTH*k+l] = B[S2*(j+k)+(i+l)];
                }
            }

            VMM(ret+i, A+j, mat);
        }

        // MAC the boundary elements along the 0 <= j <= S1 dimension
        while (j < S1) {
            for (int k = 0; k < VMM_MAT_WIDTH; k++) {
                // ret[i+k] += A[j] * B[j][i+k]
                ret[i+k] += A[j] * B[S2*j+(i+k)];
            }

            j++;
        }
    }

    // MAC the boundary elements along the 0 <= i <= S2 dimension
    while (i < S2) {
        // MAC
        for (int j = 0; j < S1; j++) {
            ret[i] += A[j] * B[S2*j+i];
        }

        i++;
    }
}

// general matrix(S1xS2)-matrix(S2xS3) multiplier => returns a S1xS3 matrix
void GMM (data_t *ret, data_t *C, data_t *D, int S1, int S2, int S3) {
    // divide-and-conquer by reusing GVM()
    for (int i = 0; i < S1; i++) {
        GVM(ret+S3*i, C+S2*i, D, S2, S3);
    }
}

// helper function that applies softmax to a single row (1D array) of length N
void softmax_row(float *row, int N) {
    // Step 1: Find the maximum value in the row for numerical stability
    float max_val = row[0];
    for (int i = 1; i < N; i++) {
        if (row[i] > max_val) {
            max_val = row[i];
        }
    }

    // Step 2: Exponentiate (safely) and calculate the sum
    float sum_exp = 0.0f;
    for (int i = 0; i < N; i++) {
        // Subtract max_val before calling expf()
        row[i] = expf(row[i] - max_val); 
        sum_exp += row[i];
    }

    // Step 3: Normalize the row by dividing by the sum
    for (int i = 0; i < N; i++) {
        row[i] /= sum_exp;
    }
}

// self-attention
// IN: S1xS2, Wq: S2xS3, Wk: S2xS3, Wv: S2xS4 => returns a S1xS4 matrix
// Q = IN x Wq , K = IN x Wk , V = IN x Wv
// attention(Q, K, V) = (softmax((QxKT)/sqrt(dk)))V
void SATT (data_t *ret, data_t *IN, data_t *Wq, data_t *Wk, data_t *Wv, int S1, int S2, int S3, int S4) {
    // compute Q, K, V
    data_t Q[S1*S3];
    data_t K[S1*S3];
    data_t V[S1*S4];

    GMM(Q, IN, Wq, S1, S2, S3);
    GMM(K, IN, Wk, S1, S2, S3);
    GMM(V, IN, Wv, S1, S2, S4);

    // Q x KT / sqrt(dk)
    data_t att_mat[S1*S1];

    data_t scale_factor = 1/sqrt(S3);

    for (int i = 0; i < S1; i++) {
        for (int j = 0; j < S1; j++) {
            // initialization
            att_mat[S1*i+j] = 0;

            // MAC
            for (int k = 0; k < S3; k++) {
                att_mat[S1*i+j] += Q[S3*i+k] * K[S3*j+k];
            }

            // divided by sqrt(dk)
            att_mat[S1*i+j] *= scale_factor;
        }
    }

    // apply activation function row-by-row (softmax)
    for (int i = 0; i < S1; i++) {
        softmax_row(att_mat+S1*i, S1);
    }

    // compute return matrix
    GMM(ret, att_mat, V, S1, S1, S4);
}
