#include "analysis.h"
#ifndef __linux__
int analysis_CfgInitialize(analysis *InstancePtr, analysis_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->analysis_BaseAddress = ConfigPtr->analysis_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
void analysis_baseiqsel_write(analysis *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    analysis_WriteReg(InstancePtr->analysis_BaseAddress, 0, Data);
}
u32 analysis_baseiqsel_read(analysis *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = analysis_ReadReg(InstancePtr->analysis_BaseAddress, 0);
    return Data;
}
void analysis_valid_in_write(analysis *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    analysis_WriteReg(InstancePtr->analysis_BaseAddress, 4, Data);
}
u32 analysis_valid_in_read(analysis *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = analysis_ReadReg(InstancePtr->analysis_BaseAddress, 4);
    return Data;
}
void analysis_swap_iq_write(analysis *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    analysis_WriteReg(InstancePtr->analysis_BaseAddress, 8, Data);
}
u32 analysis_swap_iq_read(analysis *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = analysis_ReadReg(InstancePtr->analysis_BaseAddress, 8);
    return Data;
}
void analysis_receivep0_scale_write(analysis *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    analysis_WriteReg(InstancePtr->analysis_BaseAddress, 12, Data);
}
u8 analysis_receivep0_scale_read(analysis *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = analysis_ReadReg(InstancePtr->analysis_BaseAddress, 12);
    return Data;
}
void analysis_transmit_scale_write(analysis *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    analysis_WriteReg(InstancePtr->analysis_BaseAddress, 16, Data);
}
u8 analysis_transmit_scale_read(analysis *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = analysis_ReadReg(InstancePtr->analysis_BaseAddress, 16);
    return Data;
}
void analysis_transmitp0_sel_write(analysis *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    analysis_WriteReg(InstancePtr->analysis_BaseAddress, 20, Data);
}
u8 analysis_transmitp0_sel_read(analysis *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = analysis_ReadReg(InstancePtr->analysis_BaseAddress, 20);
    return Data;
}
