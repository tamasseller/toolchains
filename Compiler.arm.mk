LIB_DIRS += /usr/lib/gcc/arm-none-eabi/7.3.1/thumb/v6-m/
LIB_DIRS += /usr/lib/arm-none-eabi/lib/thumb/v6-m/

GCCPREF = arm-none-eabi-
OC = $(GCCPREF)objcopy
CC = $(GCCPREF)gcc
CXX = $(GCCPREF)g++
LD = $(GCCPREF)ld
GDB = $(GCCPREF)gdb

OPENOCD_PATH = /opt/openocd/
OPENOCD = openocd
