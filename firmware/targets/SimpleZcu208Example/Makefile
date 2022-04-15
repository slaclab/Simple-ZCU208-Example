# Define target output
target: bit

# Define target part
export PRJ_PART = XCZU48DR-FSVG1517-2-E

# Define TOP directory
export TOP_DIR = $(abspath $(PWD)/../..)

# Allow "Signal not in the sensitivity list" for model_composer output
export ALLOW_PARTIAL_SENSE_LIST = 1

# Use top level makefile
include ../shared_version.mk
include $(TOP_DIR)/submodules/ruckus/system_vivado.mk
