/**
* @file analysis_sinit.c
*
* The implementation of the analysis driver's static initialzation
* functionality.
*
* @note
*
* None
*
*/
#ifndef __linux__
#include "xstatus.h"
#include "xparameters.h"
#include "analysis.h"
extern analysis_Config analysis_ConfigTable[];
/**
* Lookup the device configuration based on the unique device ID.  The table
* ConfigTable contains the configuration info for each device in the system.
*
* @param DeviceId is the device identifier to lookup.
*
* @return
*     - A pointer of data type analysis_Config which
*    points to the device configuration if DeviceID is found.
*    - NULL if DeviceID is not found.
*
* @note    None.
*
*/
analysis_Config *analysis_LookupConfig(u16 DeviceId) {
    analysis_Config *ConfigPtr = NULL;
    int Index;
    for (Index = 0; Index < XPAR_ANALYSIS_NUM_INSTANCES; Index++) {
        if (analysis_ConfigTable[Index].DeviceId == DeviceId) {
            ConfigPtr = &analysis_ConfigTable[Index];
            break;
        }
    }
    return ConfigPtr;
}
int analysis_Initialize(analysis *InstancePtr, u16 DeviceId) {
    analysis_Config *ConfigPtr;
    Xil_AssertNonvoid(InstancePtr != NULL);
    ConfigPtr = analysis_LookupConfig(DeviceId);
    if (ConfigPtr == NULL) {
        InstancePtr->IsReady = 0;
        return (XST_DEVICE_NOT_FOUND);
    }
    return analysis_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif
