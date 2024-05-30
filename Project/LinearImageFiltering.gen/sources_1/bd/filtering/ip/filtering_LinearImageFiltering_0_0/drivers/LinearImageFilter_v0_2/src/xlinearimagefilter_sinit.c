// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2.2 (64-bit)
// Tool Version Limit: 2024.02
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xlinearimagefilter.h"

extern XLinearimagefilter_Config XLinearimagefilter_ConfigTable[];

#ifdef SDT
XLinearimagefilter_Config *XLinearimagefilter_LookupConfig(UINTPTR BaseAddress) {
	XLinearimagefilter_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XLinearimagefilter_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XLinearimagefilter_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XLinearimagefilter_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XLinearimagefilter_Initialize(XLinearimagefilter *InstancePtr, UINTPTR BaseAddress) {
	XLinearimagefilter_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XLinearimagefilter_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XLinearimagefilter_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XLinearimagefilter_Config *XLinearimagefilter_LookupConfig(u16 DeviceId) {
	XLinearimagefilter_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XLINEARIMAGEFILTER_NUM_INSTANCES; Index++) {
		if (XLinearimagefilter_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XLinearimagefilter_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XLinearimagefilter_Initialize(XLinearimagefilter *InstancePtr, u16 DeviceId) {
	XLinearimagefilter_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XLinearimagefilter_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XLinearimagefilter_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

