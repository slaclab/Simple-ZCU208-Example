# Define target output
target: bit

# Include the .bin/.bit image
export GEN_BIN_IMAGE = 1
export GEN_BIT_IMAGE = 1

# Define target part
export PRJ_PART = XCZU48DR-FSVG1517-2-E

# Define TOP directory
export TOP_DIR = $(abspath $(PWD)/../..)

# Use top level makefile
include ../shared_version.mk
include $(TOP_DIR)/submodules/ruckus/system_vivado.mk
