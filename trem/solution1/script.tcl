############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project trem
set_top trem
add_files trem.cpp
add_files trem.h
add_files -tb trem_test.cpp
open_solution "solution1"
set_part {xc7z100ffg900-1} -tool vivado
create_clock -period 10 -name default
#source "./trem/solution1/directives.tcl"
csim_design -compiler clang
csynth_design
cosim_design
export_design -flow syn -rtl verilog -format ip_catalog
