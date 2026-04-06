//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Tue Mar 17 20:56:48 2026
//Host        : NaveedTechbook running 64-bit major release  (build 9200)
//Command     : generate_target cva6_pcie_design_wrapper.bd
//Design      : cva6_pcie_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module cva6_pcie_design_wrapper
   (CVA6_AXI_araddr,
    CVA6_AXI_arburst,
    CVA6_AXI_arcache,
    CVA6_AXI_arlen,
    CVA6_AXI_arlock,
    CVA6_AXI_arprot,
    CVA6_AXI_arqos,
    CVA6_AXI_arready,
    CVA6_AXI_arsize,
    CVA6_AXI_arvalid,
    CVA6_AXI_awaddr,
    CVA6_AXI_awburst,
    CVA6_AXI_awcache,
    CVA6_AXI_awlen,
    CVA6_AXI_awlock,
    CVA6_AXI_awprot,
    CVA6_AXI_awqos,
    CVA6_AXI_awready,
    CVA6_AXI_awsize,
    CVA6_AXI_awvalid,
    CVA6_AXI_bready,
    CVA6_AXI_bresp,
    CVA6_AXI_bvalid,
    CVA6_AXI_rdata,
    CVA6_AXI_rlast,
    CVA6_AXI_rready,
    CVA6_AXI_rresp,
    CVA6_AXI_rvalid,
    CVA6_AXI_wdata,
    CVA6_AXI_wlast,
    CVA6_AXI_wready,
    CVA6_AXI_wstrb,
    CVA6_AXI_wvalid,
    CVA6_CLK,
    diff_clock_rtl_0_clk_n,
    diff_clock_rtl_0_clk_p,
    pcie_7x_mgt_rtl_0_rxn,
    pcie_7x_mgt_rtl_0_rxp,
    pcie_7x_mgt_rtl_0_txn,
    pcie_7x_mgt_rtl_0_txp,
    reset_rtl_0);
  input [31:0]CVA6_AXI_araddr;
  input [1:0]CVA6_AXI_arburst;
  input [3:0]CVA6_AXI_arcache;
  input [7:0]CVA6_AXI_arlen;
  input [0:0]CVA6_AXI_arlock;
  input [2:0]CVA6_AXI_arprot;
  input [3:0]CVA6_AXI_arqos;
  output CVA6_AXI_arready;
  input [2:0]CVA6_AXI_arsize;
  input CVA6_AXI_arvalid;
  input [31:0]CVA6_AXI_awaddr;
  input [1:0]CVA6_AXI_awburst;
  input [3:0]CVA6_AXI_awcache;
  input [7:0]CVA6_AXI_awlen;
  input [0:0]CVA6_AXI_awlock;
  input [2:0]CVA6_AXI_awprot;
  input [3:0]CVA6_AXI_awqos;
  output CVA6_AXI_awready;
  input [2:0]CVA6_AXI_awsize;
  input CVA6_AXI_awvalid;
  input CVA6_AXI_bready;
  output [1:0]CVA6_AXI_bresp;
  output CVA6_AXI_bvalid;
  output [31:0]CVA6_AXI_rdata;
  output CVA6_AXI_rlast;
  input CVA6_AXI_rready;
  output [1:0]CVA6_AXI_rresp;
  output CVA6_AXI_rvalid;
  input [31:0]CVA6_AXI_wdata;
  input CVA6_AXI_wlast;
  output CVA6_AXI_wready;
  input [3:0]CVA6_AXI_wstrb;
  input CVA6_AXI_wvalid;
  output CVA6_CLK;
  input [0:0]diff_clock_rtl_0_clk_n;
  input [0:0]diff_clock_rtl_0_clk_p;
  input [7:0]pcie_7x_mgt_rtl_0_rxn;
  input [7:0]pcie_7x_mgt_rtl_0_rxp;
  output [7:0]pcie_7x_mgt_rtl_0_txn;
  output [7:0]pcie_7x_mgt_rtl_0_txp;
  input reset_rtl_0;

  wire [31:0]CVA6_AXI_araddr;
  wire [1:0]CVA6_AXI_arburst;
  wire [3:0]CVA6_AXI_arcache;
  wire [7:0]CVA6_AXI_arlen;
  wire [0:0]CVA6_AXI_arlock;
  wire [2:0]CVA6_AXI_arprot;
  wire [3:0]CVA6_AXI_arqos;
  wire CVA6_AXI_arready;
  wire [2:0]CVA6_AXI_arsize;
  wire CVA6_AXI_arvalid;
  wire [31:0]CVA6_AXI_awaddr;
  wire [1:0]CVA6_AXI_awburst;
  wire [3:0]CVA6_AXI_awcache;
  wire [7:0]CVA6_AXI_awlen;
  wire [0:0]CVA6_AXI_awlock;
  wire [2:0]CVA6_AXI_awprot;
  wire [3:0]CVA6_AXI_awqos;
  wire CVA6_AXI_awready;
  wire [2:0]CVA6_AXI_awsize;
  wire CVA6_AXI_awvalid;
  wire CVA6_AXI_bready;
  wire [1:0]CVA6_AXI_bresp;
  wire CVA6_AXI_bvalid;
  wire [31:0]CVA6_AXI_rdata;
  wire CVA6_AXI_rlast;
  wire CVA6_AXI_rready;
  wire [1:0]CVA6_AXI_rresp;
  wire CVA6_AXI_rvalid;
  wire [31:0]CVA6_AXI_wdata;
  wire CVA6_AXI_wlast;
  wire CVA6_AXI_wready;
  wire [3:0]CVA6_AXI_wstrb;
  wire CVA6_AXI_wvalid;
  wire CVA6_CLK;
  wire [0:0]diff_clock_rtl_0_clk_n;
  wire [0:0]diff_clock_rtl_0_clk_p;
  wire [7:0]pcie_7x_mgt_rtl_0_rxn;
  wire [7:0]pcie_7x_mgt_rtl_0_rxp;
  wire [7:0]pcie_7x_mgt_rtl_0_txn;
  wire [7:0]pcie_7x_mgt_rtl_0_txp;
  wire reset_rtl_0;

  cva6_pcie_design cva6_pcie_design_i
       (.CVA6_AXI_araddr(CVA6_AXI_araddr),
        .CVA6_AXI_arburst(CVA6_AXI_arburst),
        .CVA6_AXI_arcache(CVA6_AXI_arcache),
        .CVA6_AXI_arlen(CVA6_AXI_arlen),
        .CVA6_AXI_arlock(CVA6_AXI_arlock),
        .CVA6_AXI_arprot(CVA6_AXI_arprot),
        .CVA6_AXI_arqos(CVA6_AXI_arqos),
        .CVA6_AXI_arready(CVA6_AXI_arready),
        .CVA6_AXI_arsize(CVA6_AXI_arsize),
        .CVA6_AXI_arvalid(CVA6_AXI_arvalid),
        .CVA6_AXI_awaddr(CVA6_AXI_awaddr),
        .CVA6_AXI_awburst(CVA6_AXI_awburst),
        .CVA6_AXI_awcache(CVA6_AXI_awcache),
        .CVA6_AXI_awlen(CVA6_AXI_awlen),
        .CVA6_AXI_awlock(CVA6_AXI_awlock),
        .CVA6_AXI_awprot(CVA6_AXI_awprot),
        .CVA6_AXI_awqos(CVA6_AXI_awqos),
        .CVA6_AXI_awready(CVA6_AXI_awready),
        .CVA6_AXI_awsize(CVA6_AXI_awsize),
        .CVA6_AXI_awvalid(CVA6_AXI_awvalid),
        .CVA6_AXI_bready(CVA6_AXI_bready),
        .CVA6_AXI_bresp(CVA6_AXI_bresp),
        .CVA6_AXI_bvalid(CVA6_AXI_bvalid),
        .CVA6_AXI_rdata(CVA6_AXI_rdata),
        .CVA6_AXI_rlast(CVA6_AXI_rlast),
        .CVA6_AXI_rready(CVA6_AXI_rready),
        .CVA6_AXI_rresp(CVA6_AXI_rresp),
        .CVA6_AXI_rvalid(CVA6_AXI_rvalid),
        .CVA6_AXI_wdata(CVA6_AXI_wdata),
        .CVA6_AXI_wlast(CVA6_AXI_wlast),
        .CVA6_AXI_wready(CVA6_AXI_wready),
        .CVA6_AXI_wstrb(CVA6_AXI_wstrb),
        .CVA6_AXI_wvalid(CVA6_AXI_wvalid),
        .CVA6_CLK(CVA6_CLK),
        .diff_clock_rtl_0_clk_n(diff_clock_rtl_0_clk_n),
        .diff_clock_rtl_0_clk_p(diff_clock_rtl_0_clk_p),
        .pcie_7x_mgt_rtl_0_rxn(pcie_7x_mgt_rtl_0_rxn),
        .pcie_7x_mgt_rtl_0_rxp(pcie_7x_mgt_rtl_0_rxp),
        .pcie_7x_mgt_rtl_0_txn(pcie_7x_mgt_rtl_0_txn),
        .pcie_7x_mgt_rtl_0_txp(pcie_7x_mgt_rtl_0_txp),
        .reset_rtl_0(reset_rtl_0));
endmodule
