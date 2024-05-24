// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2.2 (64-bit)
// Tool Version Limit: 2024.02
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

extern "C" void AESL_WRAP_LinearImageFilter (
volatile void* image_out,
volatile void* image_in,
int rows,
int cols,
volatile void* kernel,
int kernel_dim,
int stride_row,
int stride_col,
char padding);
