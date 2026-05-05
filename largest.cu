#include <cstdio>
#include <cuda_runtime.h>

__global__ void maxKernel(const int* input, int* output) {
    __shared__ int shared[32];

    int tid = threadIdx.x;
    int idx = threadIdx.x;

    shared[tid] = input[idx];
    __syncthreads();

    for (int stride = blockDim.x / 2; stride > 0; stride >>= 1) {
        if (tid < stride) {
            if (shared[tid + stride] > shared[tid]) {
                shared[tid] = shared[tid + stride];
            }
        }
        __syncthreads();
    }

    if (tid == 0) {
        *output = shared[0];
    }
}

int main() {
    const int h_number_list[5] = {33, 65, 27, 223, 63};
    int* d_input = nullptr;
    int* d_output = nullptr;
    int h_result = 0;

    cudaMalloc(&d_input, 5 * sizeof(int));
    cudaMalloc(&d_output, sizeof(int));

    cudaMemcpy(d_input, h_number_list, 5 * sizeof(int), cudaMemcpyHostToDevice);

    maxKernel<<<1, 5>>>(d_input, d_output);

    cudaMemcpy(&h_result, d_output, sizeof(int), cudaMemcpyDeviceToHost);

    printf("the largest number is %d\n", h_result);

    cudaFree(d_input);
    cudaFree(d_output);

    return 0;
}
