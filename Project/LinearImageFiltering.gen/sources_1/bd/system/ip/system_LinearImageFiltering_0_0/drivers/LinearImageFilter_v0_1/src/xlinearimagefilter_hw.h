// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2.2 (64-bit)
// Tool Version Limit: 2024.02
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of image_out_offset
//        bit 31~0 - image_out_offset[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of image_in_offset
//        bit 31~0 - image_in_offset[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of rows
//        bit 31~0 - rows[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of cols
//        bit 31~0 - cols[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of kernel_offset
//        bit 31~0 - kernel_offset[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of kernel_size_r
//        bit 31~0 - kernel_size_r[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of stride_row
//        bit 31~0 - stride_row[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of stride_col
//        bit 31~0 - stride_col[31:0] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of padding
//        bit 7~0 - padding[7:0] (Read/Write)
//        others  - reserved
// 0x54 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XLINEARIMAGEFILTER_CONTROL_ADDR_AP_CTRL               0x00
#define XLINEARIMAGEFILTER_CONTROL_ADDR_GIE                   0x04
#define XLINEARIMAGEFILTER_CONTROL_ADDR_IER                   0x08
#define XLINEARIMAGEFILTER_CONTROL_ADDR_ISR                   0x0c
#define XLINEARIMAGEFILTER_CONTROL_ADDR_IMAGE_OUT_OFFSET_DATA 0x10
#define XLINEARIMAGEFILTER_CONTROL_BITS_IMAGE_OUT_OFFSET_DATA 32
#define XLINEARIMAGEFILTER_CONTROL_ADDR_IMAGE_IN_OFFSET_DATA  0x18
#define XLINEARIMAGEFILTER_CONTROL_BITS_IMAGE_IN_OFFSET_DATA  32
#define XLINEARIMAGEFILTER_CONTROL_ADDR_ROWS_DATA             0x20
#define XLINEARIMAGEFILTER_CONTROL_BITS_ROWS_DATA             32
#define XLINEARIMAGEFILTER_CONTROL_ADDR_COLS_DATA             0x28
#define XLINEARIMAGEFILTER_CONTROL_BITS_COLS_DATA             32
#define XLINEARIMAGEFILTER_CONTROL_ADDR_KERNEL_OFFSET_DATA    0x30
#define XLINEARIMAGEFILTER_CONTROL_BITS_KERNEL_OFFSET_DATA    32
#define XLINEARIMAGEFILTER_CONTROL_ADDR_KERNEL_SIZE_R_DATA    0x38
#define XLINEARIMAGEFILTER_CONTROL_BITS_KERNEL_SIZE_R_DATA    32
#define XLINEARIMAGEFILTER_CONTROL_ADDR_STRIDE_ROW_DATA       0x40
#define XLINEARIMAGEFILTER_CONTROL_BITS_STRIDE_ROW_DATA       32
#define XLINEARIMAGEFILTER_CONTROL_ADDR_STRIDE_COL_DATA       0x48
#define XLINEARIMAGEFILTER_CONTROL_BITS_STRIDE_COL_DATA       32
#define XLINEARIMAGEFILTER_CONTROL_ADDR_PADDING_DATA          0x50
#define XLINEARIMAGEFILTER_CONTROL_BITS_PADDING_DATA          8

