#include "hw1.h"
#include <iostream>
#include <Eigen/Dense> // https://www.quantstart.com/articles/Eigen-Library-for-Matrix-Algebra-in-C/

void print_mat (data_t *mat, int height, int width) {
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            std::cout << mat[width*i+j] << " ";
        }

        std::cout << "\n";
    }
}

int main () {
    /* VMM() */
    std::cout << "-------------------------------------\nVMM()\n-------------------------------------\n";

    {
        // Eigen
        Eigen::MatrixXd p(1, VMM_VEC_WIDTH);
        p <<
            1.2, 2.2, 3.2;

        Eigen::MatrixXd q(VMM_VEC_WIDTH, VMM_MAT_WIDTH);
        q <<
            2.2,  3.2,  4.2,  5.2,
            6.2,  7.2,  8.2,  9.2,
            10.2, 11.2, 12.2, 13.2;

        std::cout << "Eigen:\n" << p*q << "\n\n";

        // VMM()
        data_t A[1*VMM_VEC_WIDTH] = {1.2, 2.2, 3.2};

        data_t B[VMM_VEC_WIDTH*VMM_MAT_WIDTH] = {
            2.2,  3.2,  4.2,  5.2,
            6.2,  7.2,  8.2,  9.2,
            10.2, 11.2, 12.2, 13.2
        };

        data_t ret[1*VMM_MAT_WIDTH] = {0};

        std::cout << "My:\n";
        VMM(ret, A, B);
        
        print_mat(ret, 1, VMM_MAT_WIDTH);
    }



    /* GVM() */
    std::cout << "-------------------------------------\nGVM()\n-------------------------------------\n";

    {
        std::cout << "* Case 1:\n";

        const int S1 = 7;
        const int S2 = 5;

        // Eigen
        Eigen::MatrixXd p(1, S1);
        p <<
            1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7;

        Eigen::MatrixXd q(S1, S2);
        q <<
            2.1,   2.2,   2.3,   2.4,   2.5,  // Row 0
            3.1,   3.2,   3.3,   3.4,   3.5,  // Row 1
            4.1,   4.2,   4.3,   4.4,   4.5,  // Row 2
            5.1,   5.2,   5.3,   5.4,   5.5,  // Row 3
            6.1,   6.2,   6.3,   6.4,   6.5,  // Row 4
            7.1,   7.2,   7.3,   7.4,   7.5,  // Row 5
            8.1,   8.2,   8.3,   8.4,   8.5;  // Row 6

        std::cout << "Eigen:\n" << p*q << "\n\n";

        // GVM()
        // 1x7 Vector
        data_t A[1*S1] = {
            1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7
        };

        // 7x5 Matrix flattened into a 1D array
        data_t B[S1*S2] = {
            2.1,   2.2,   2.3,   2.4,   2.5,  // Row 0
            3.1,   3.2,   3.3,   3.4,   3.5,  // Row 1
            4.1,   4.2,   4.3,   4.4,   4.5,  // Row 2
            5.1,   5.2,   5.3,   5.4,   5.5,  // Row 3
            6.1,   6.2,   6.3,   6.4,   6.5,  // Row 4
            7.1,   7.2,   7.3,   7.4,   7.5,  // Row 5
            8.1,   8.2,   8.3,   8.4,   8.5   // Row 6
        };

        // TODO: test uninitialized
        data_t ret[1*S2];

        std::cout << "My:\n";
        GVM(ret, A, B, S1, S2);

        print_mat(ret, 1, S2);
    }

    {
        std::cout << "\n* Case 2:\n";

        const int S1 = 2;
        const int S2 = 2;

        // Eigen
        Eigen::MatrixXd p(1, S1);
        p <<
            1.1, 1.2;

        Eigen::MatrixXd q(S1, S2);
        q <<
            2.1,   2.2, // Row 0
            3.1,   3.2; // Row 1

        std::cout << "Eigen:\n" << p*q << "\n\n";

        // GVM()
        // 1x7 Vector
        data_t A[1*S1] = {
            1.1, 1.2
        };

        // 7x5 Matrix flattened into a 1D array
        data_t B[S1*S2] = {
            2.1,   2.2, // Row 0
            3.1,   3.2  // Row 1
        };

        // TODO: test uninitialized
        data_t ret[1*S2];

        std::cout << "My:\n";
        GVM(ret, A, B, S1, S2);

        print_mat(ret, 1, S2);
    }


    /* GMM() */
    std::cout << "-------------------------------------\nGMM()\n-------------------------------------\n";

    {
        const int S1 = 3;
        const int S2 = 4;
        const int S3 = 2;

        // Eigen
        Eigen::MatrixXd p(S1, S2);
        p <<
            1.1, 1.2, 1.3, 1.4,
            2.1, 2.2, 2.3, 2.4,
            3.1, 3.2, 3.3, 3.4;

        Eigen::MatrixXd q(S2, S3);
        q <<
            1.1, 1.2,
            2.1, 2.2,
            3.1, 3.2,
            4.1, 4.2;

        std::cout << "Eigen:\n" << p*q << "\n\n";

        // GMM()
        data_t C[S1 * S2] = {
            1.1, 1.2, 1.3, 1.4,
            2.1, 2.2, 2.3, 2.4,
            3.1, 3.2, 3.3, 3.4
        };

        data_t D[S2 * S3] = {
            1.1, 1.2,
            2.1, 2.2,
            3.1, 3.2,
            4.1, 4.2
        };

        data_t ret[S1 * S3];

        std::cout << "My:\n";
        GMM(ret, C, D, S1, S2, S3);

        print_mat(ret, S1, S3);
    }
}
