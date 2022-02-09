#ifndef ANALYSIS__H
#define ANALYSIS__H
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
#include "analysis_hw.h"
/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 analysis_BaseAddress;
} analysis_Config;
#endif
/**
* The analysis driver instance data. The user is required to
* allocate a variable of this type for every analysis device in the system.
* A pointer to a variable of this type is then passed to the driver
* API functions.
*/
typedef struct {
    u32 analysis_BaseAddress;
    u32 IsReady;
} analysis;
/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define analysis_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define analysis_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define analysis_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define analysis_ReadReg(BaseAddress, RegOffset) \
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
int analysis_Initialize(analysis *InstancePtr, u16 DeviceId);
analysis_Config* analysis_LookupConfig(u16 DeviceId);
int analysis_CfgInitialize(analysis *InstancePtr, analysis_Config *ConfigPtr);
#else
int analysis_Initialize(analysis *InstancePtr, const char* InstanceName);
int analysis_Release(analysis *InstancePtr);
#endif
/**
* Write to baseiqsel gateway of analysis. Assignments are LSB-justified.
*
* @param	InstancePtr is the baseiqsel instance to operate on.
* @param	Data is value to be written to gateway baseiqsel.
*
* @return	None.
*
* @note    .
*
*/
void analysis_baseiqsel_write(analysis *InstancePtr, u32 Data);
/**
* Read from baseiqsel gateway of analysis. Assignments are LSB-justified.
*
* @param	InstancePtr is the baseiqsel instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 analysis_baseiqsel_read(analysis *InstancePtr);
/**
* Write to valid_in gateway of analysis. Assignments are LSB-justified.
*
* @param	InstancePtr is the valid_in instance to operate on.
* @param	Data is value to be written to gateway valid_in.
*
* @return	None.
*
* @note    .
*
*/
void analysis_valid_in_write(analysis *InstancePtr, u32 Data);
/**
* Read from valid_in gateway of analysis. Assignments are LSB-justified.
*
* @param	InstancePtr is the valid_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 analysis_valid_in_read(analysis *InstancePtr);
/**
* Write to swap_iq gateway of analysis. Assignments are LSB-justified.
*
* @param	InstancePtr is the swap_iq instance to operate on.
* @param	Data is value to be written to gateway swap_iq.
*
* @return	None.
*
* @note    .
*
*/
void analysis_swap_iq_write(analysis *InstancePtr, u32 Data);
/**
* Read from swap_iq gateway of analysis. Assignments are LSB-justified.
*
* @param	InstancePtr is the swap_iq instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 analysis_swap_iq_read(analysis *InstancePtr);
/**
* Write to receivep0_scale gateway of analysis. Assignments are LSB-justified.
*
* @param	InstancePtr is the receivep0_scale instance to operate on.
* @param	Data is value to be written to gateway receivep0_scale.
*
* @return	None.
*
* @note    .
*
*/
void analysis_receivep0_scale_write(analysis *InstancePtr, u8 Data);
/**
* Read from receivep0_scale gateway of analysis. Assignments are LSB-justified.
*
* @param	InstancePtr is the receivep0_scale instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 analysis_receivep0_scale_read(analysis *InstancePtr);
/**
* Write to transmit_scale gateway of analysis. Assignments are LSB-justified.
*
* @param	InstancePtr is the transmit_scale instance to operate on.
* @param	Data is value to be written to gateway transmit_scale.
*
* @return	None.
*
* @note    .
*
*/
void analysis_transmit_scale_write(analysis *InstancePtr, u8 Data);
/**
* Read from transmit_scale gateway of analysis. Assignments are LSB-justified.
*
* @param	InstancePtr is the transmit_scale instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 analysis_transmit_scale_read(analysis *InstancePtr);
/**
* Write to transmitp0_sel gateway of analysis. Assignments are LSB-justified.
*
* @param	InstancePtr is the transmitp0_sel instance to operate on.
* @param	Data is value to be written to gateway transmitp0_sel.
*
* @return	None.
*
* @note    .
*
*/
void analysis_transmitp0_sel_write(analysis *InstancePtr, u8 Data);
/**
* Read from transmitp0_sel gateway of analysis. Assignments are LSB-justified.
*
* @param	InstancePtr is the transmitp0_sel instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 analysis_transmitp0_sel_read(analysis *InstancePtr);
#ifdef __cplusplus
}
#endif
#endif
