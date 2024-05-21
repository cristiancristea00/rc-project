// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2.2 (64-bit)
// Tool Version Limit: 2024.02
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XLINEARIMAGEFILTER_H
#define XLINEARIMAGEFILTER_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xlinearimagefilter_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u32 Control_BaseAddress;
} XLinearimagefilter_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 IsReady;
} XLinearimagefilter;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XLinearimagefilter_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XLinearimagefilter_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XLinearimagefilter_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XLinearimagefilter_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XLinearimagefilter_Initialize(XLinearimagefilter *InstancePtr, UINTPTR BaseAddress);
XLinearimagefilter_Config* XLinearimagefilter_LookupConfig(UINTPTR BaseAddress);
#else
int XLinearimagefilter_Initialize(XLinearimagefilter *InstancePtr, u16 DeviceId);
XLinearimagefilter_Config* XLinearimagefilter_LookupConfig(u16 DeviceId);
#endif
int XLinearimagefilter_CfgInitialize(XLinearimagefilter *InstancePtr, XLinearimagefilter_Config *ConfigPtr);
#else
int XLinearimagefilter_Initialize(XLinearimagefilter *InstancePtr, const char* InstanceName);
int XLinearimagefilter_Release(XLinearimagefilter *InstancePtr);
#endif

void XLinearimagefilter_Start(XLinearimagefilter *InstancePtr);
u32 XLinearimagefilter_IsDone(XLinearimagefilter *InstancePtr);
u32 XLinearimagefilter_IsIdle(XLinearimagefilter *InstancePtr);
u32 XLinearimagefilter_IsReady(XLinearimagefilter *InstancePtr);
void XLinearimagefilter_EnableAutoRestart(XLinearimagefilter *InstancePtr);
void XLinearimagefilter_DisableAutoRestart(XLinearimagefilter *InstancePtr);

void XLinearimagefilter_Set_image_out_offset(XLinearimagefilter *InstancePtr, u32 Data);
u32 XLinearimagefilter_Get_image_out_offset(XLinearimagefilter *InstancePtr);
void XLinearimagefilter_Set_image_in_offset(XLinearimagefilter *InstancePtr, u32 Data);
u32 XLinearimagefilter_Get_image_in_offset(XLinearimagefilter *InstancePtr);
void XLinearimagefilter_Set_rows(XLinearimagefilter *InstancePtr, u32 Data);
u32 XLinearimagefilter_Get_rows(XLinearimagefilter *InstancePtr);
void XLinearimagefilter_Set_cols(XLinearimagefilter *InstancePtr, u32 Data);
u32 XLinearimagefilter_Get_cols(XLinearimagefilter *InstancePtr);
void XLinearimagefilter_Set_kernel_offset(XLinearimagefilter *InstancePtr, u32 Data);
u32 XLinearimagefilter_Get_kernel_offset(XLinearimagefilter *InstancePtr);
void XLinearimagefilter_Set_kernel_size_r(XLinearimagefilter *InstancePtr, u32 Data);
u32 XLinearimagefilter_Get_kernel_size_r(XLinearimagefilter *InstancePtr);
void XLinearimagefilter_Set_stride_row(XLinearimagefilter *InstancePtr, u32 Data);
u32 XLinearimagefilter_Get_stride_row(XLinearimagefilter *InstancePtr);
void XLinearimagefilter_Set_stride_col(XLinearimagefilter *InstancePtr, u32 Data);
u32 XLinearimagefilter_Get_stride_col(XLinearimagefilter *InstancePtr);
void XLinearimagefilter_Set_padding(XLinearimagefilter *InstancePtr, u32 Data);
u32 XLinearimagefilter_Get_padding(XLinearimagefilter *InstancePtr);

void XLinearimagefilter_InterruptGlobalEnable(XLinearimagefilter *InstancePtr);
void XLinearimagefilter_InterruptGlobalDisable(XLinearimagefilter *InstancePtr);
void XLinearimagefilter_InterruptEnable(XLinearimagefilter *InstancePtr, u32 Mask);
void XLinearimagefilter_InterruptDisable(XLinearimagefilter *InstancePtr, u32 Mask);
void XLinearimagefilter_InterruptClear(XLinearimagefilter *InstancePtr, u32 Mask);
u32 XLinearimagefilter_InterruptGetEnabled(XLinearimagefilter *InstancePtr);
u32 XLinearimagefilter_InterruptGetStatus(XLinearimagefilter *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
