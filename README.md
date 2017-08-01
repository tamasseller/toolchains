Containerized toolchains
========================

Portable containerized development environment with the ability to build with:

 - Cross compiler for 64-bit windows target (x86_64-w64-mingw GCC target)
 - Cross compiler for embedded bare metal cortex-m devices (arm-none-eabi GCC target)
 - Compilation for the container itself (amd64 linux target, mainly for unit testing)

Also contains several general development utilites:

 - Gdb for all the platforms above,
 - GNU make to facilitate in-container builds,
 - Openocd and dfu-util utilites for embedded deployment,
 - Pandoc and texlive for documentation generation.

Requirements
------------

Requires the following to operate:

 - Linux host,
 - with GNU make,
 - and Docker installed.

Usage
-----

Contains a makefile that invokes docker:

 - to build the image if (only if needed, incrementally),
 - and also it can enter the container (enter-the-matrix make target)
   with mapping the current directory to the same path internally and
   making usb devices available for the container.
