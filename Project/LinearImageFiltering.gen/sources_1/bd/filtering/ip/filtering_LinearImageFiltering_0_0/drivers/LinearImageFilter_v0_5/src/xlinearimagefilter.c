// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2.2 (64-bit)
// Tool Version Limit: 2024.02
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xlinearimagefilter.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XLinearimagefilter_CfgInitialize(XLinearimagefilter *InstancePtr, XLinearimagefilter_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XLinearimagefilter_Start(XLinearimagefilter *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearimagefilter_ReadReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_AP_CTRL) & 0x80;
    XLinearimagefilter_WriteReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XLinearimagefilter_IsDone(XLinearimagefilter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearimagefilter_ReadReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XLinearimagefilter_IsIdle(XLinearimagefilter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearimagefilter_ReadReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XLinearimagefilter_IsReady(XLinearimagefilter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearimagefilter_ReadReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XLinearimagefilter_EnableAutoRestart(XLinearimagefilter *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearimagefilter_WriteReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XLinearimagefilter_DisableAutoRestart(XLinearimagefilter *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearimagefilter_WriteReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_AP_CTRL, 0);
}

void XLinearimagefilter_Set_image_out_offset(XLinearimagefilter *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearimagefilter_WriteReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_IMAGE_OUT_OFFSET_DATA, Data);
}

u32 XLinearimagefilter_Get_image_out_offset(XLinearimagefilter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearimagefilter_ReadReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_IMAGE_OUT_OFFSET_DATA);
    return Data;
}

void XLinearimagefilter_Set_image_in_offset(XLinearimagefilter *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearimagefilter_WriteReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_IMAGE_IN_OFFSET_DATA, Data);
}

u32 XLinearimagefilter_Get_image_in_offset(XLinearimagefilter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearimagefilter_ReadReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_IMAGE_IN_OFFSET_DATA);
    return Data;
}

void XLinearimagefilter_Set_rows(XLinearimagefilter *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearimagefilter_WriteReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_ROWS_DATA, Data);
}

u32 XLinearimagefilter_Get_rows(XLinearimagefilter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearimagefilter_ReadReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_ROWS_DATA);
    return Data;
}

void XLinearimagefilter_Set_cols(XLinearimagefilter *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearimagefilter_WriteReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_COLS_DATA, Data);
}

u32 XLinearimagefilter_Get_cols(XLinearimagefilter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearimagefilter_ReadReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_COLS_DATA);
    return Data;
}

void XLinearimagefilter_Set_kernel_offset(XLinearimagefilter *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearimagefilter_WriteReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_KERNEL_OFFSET_DATA, Data);
}

u32 XLinearimagefilter_Get_kernel_offset(XLinearimagefilter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearimagefilter_ReadReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_KERNEL_OFFSET_DATA);
    return Data;
}

void XLinearimagefilter_Set_kernel_dim(XLinearimagefilter *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearimagefilter_WriteReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_KERNEL_DIM_DATA, Data);
}

u32 XLinearimagefilter_Get_kernel_dim(XLinearimagefilter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearimagefilter_ReadReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_KERNEL_DIM_DATA);
    return Data;
}

void XLinearimagefilter_Set_stride_row(XLinearimagefilter *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearimagefilter_WriteReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_STRIDE_ROW_DATA, Data);
}

u32 XLinearimagefilter_Get_stride_row(XLinearimagefilter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearimagefilter_ReadReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_STRIDE_ROW_DATA);
    return Data;
}

void XLinearimagefilter_Set_stride_col(XLinearimagefilter *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearimagefilter_WriteReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_STRIDE_COL_DATA, Data);
}

u32 XLinearimagefilter_Get_stride_col(XLinearimagefilter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearimagefilter_ReadReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_STRIDE_COL_DATA);
    return Data;
}

void XLinearimagefilter_Set_padding(XLinearimagefilter *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearimagefilter_WriteReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_PADDING_DATA, Data);
}

u32 XLinearimagefilter_Get_padding(XLinearimagefilter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinearimagefilter_ReadReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_PADDING_DATA);
    return Data;
}

void XLinearimagefilter_InterruptGlobalEnable(XLinearimagefilter *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearimagefilter_WriteReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_GIE, 1);
}

void XLinearimagefilter_InterruptGlobalDisable(XLinearimagefilter *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearimagefilter_WriteReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_GIE, 0);
}

void XLinearimagefilter_InterruptEnable(XLinearimagefilter *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLinearimagefilter_ReadReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_IER);
    XLinearimagefilter_WriteReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_IER, Register | Mask);
}

void XLinearimagefilter_InterruptDisable(XLinearimagefilter *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLinearimagefilter_ReadReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_IER);
    XLinearimagefilter_WriteReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_IER, Register & (~Mask));
}

void XLinearimagefilter_InterruptClear(XLinearimagefilter *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinearimagefilter_WriteReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_ISR, Mask);
}

u32 XLinearimagefilter_InterruptGetEnabled(XLinearimagefilter *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLinearimagefilter_ReadReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_IER);
}

u32 XLinearimagefilter_InterruptGetStatus(XLinearimagefilter *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLinearimagefilter_ReadReg(InstancePtr->Control_BaseAddress, XLINEARIMAGEFILTER_CONTROL_ADDR_ISR);
}

