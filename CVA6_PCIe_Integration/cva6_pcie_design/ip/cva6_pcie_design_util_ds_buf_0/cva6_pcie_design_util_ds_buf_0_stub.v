// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Mar 16 10:27:44 2026
// Host        : NaveedTechbook running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top cva6_pcie_design_util_ds_buf_0 -prefix
//               cva6_pcie_design_util_ds_buf_0_ cva6_pcie_design_util_ds_buf_0_stub.v
// Design      : cva6_pcie_design_util_ds_buf_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku3p-ffva676-3-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "util_ds_buf,Vivado 2022.2" *)
module cva6_pcie_design_util_ds_buf_0(IBUF_DS_P, IBUF_DS_N, IBUF_OUT, IBUF_DS_ODIV2)
/* synthesis syn_black_box black_box_pad_pin="IBUF_DS_P[0:0],IBUF_DS_N[0:0],IBUF_OUT[0:0],IBUF_DS_ODIV2[0:0]" */;
  input [0:0]IBUF_DS_P;
  input [0:0]IBUF_DS_N;
  output [0:0]IBUF_OUT;
  output [0:0]IBUF_DS_ODIV2;
endmodule
