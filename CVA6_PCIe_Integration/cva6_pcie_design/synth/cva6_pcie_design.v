//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Tue Mar 17 20:56:48 2026
//Host        : NaveedTechbook running 64-bit major release  (build 9200)
//Command     : generate_target cva6_pcie_design.bd
//Design      : cva6_pcie_design
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "cva6_pcie_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=cva6_pcie_design,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=3,da_bram_cntlr_cnt=2,da_xdma_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "cva6_pcie_design.hwdef" *) 
module cva6_pcie_design
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CVA6_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cva6_pcie_design_xdma_0_0_axi_aclk, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]CVA6_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI ARBURST" *) input [1:0]CVA6_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI ARCACHE" *) input [3:0]CVA6_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI ARLEN" *) input [7:0]CVA6_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI ARLOCK" *) input [0:0]CVA6_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI ARPROT" *) input [2:0]CVA6_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI ARQOS" *) input [3:0]CVA6_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI ARREADY" *) output CVA6_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI ARSIZE" *) input [2:0]CVA6_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI ARVALID" *) input CVA6_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI AWADDR" *) input [31:0]CVA6_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI AWBURST" *) input [1:0]CVA6_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI AWCACHE" *) input [3:0]CVA6_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI AWLEN" *) input [7:0]CVA6_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI AWLOCK" *) input [0:0]CVA6_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI AWPROT" *) input [2:0]CVA6_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI AWQOS" *) input [3:0]CVA6_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI AWREADY" *) output CVA6_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI AWSIZE" *) input [2:0]CVA6_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI AWVALID" *) input CVA6_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI BREADY" *) input CVA6_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI BRESP" *) output [1:0]CVA6_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI BVALID" *) output CVA6_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI RDATA" *) output [31:0]CVA6_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI RLAST" *) output CVA6_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI RREADY" *) input CVA6_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI RRESP" *) output [1:0]CVA6_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI RVALID" *) output CVA6_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI WDATA" *) input [31:0]CVA6_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI WLAST" *) input CVA6_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI WREADY" *) output CVA6_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI WSTRB" *) input [3:0]CVA6_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CVA6_AXI WVALID" *) input CVA6_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CVA6_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CVA6_CLK, ASSOCIATED_BUSIF CVA6_AXI, CLK_DOMAIN cva6_pcie_design_xdma_0_0_axi_aclk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output CVA6_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 diff_clock_rtl_0 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME diff_clock_rtl_0, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]diff_clock_rtl_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 diff_clock_rtl_0 CLK_P" *) input [0:0]diff_clock_rtl_0_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt_rtl_0 rxn" *) input [7:0]pcie_7x_mgt_rtl_0_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt_rtl_0 rxp" *) input [7:0]pcie_7x_mgt_rtl_0_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt_rtl_0 txn" *) output [7:0]pcie_7x_mgt_rtl_0_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt_rtl_0 txp" *) output [7:0]pcie_7x_mgt_rtl_0_txp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_rtl_0;

  wire [31:0]S01_AXI_0_1_ARADDR;
  wire [1:0]S01_AXI_0_1_ARBURST;
  wire [3:0]S01_AXI_0_1_ARCACHE;
  wire [7:0]S01_AXI_0_1_ARLEN;
  wire [0:0]S01_AXI_0_1_ARLOCK;
  wire [2:0]S01_AXI_0_1_ARPROT;
  wire [3:0]S01_AXI_0_1_ARQOS;
  wire S01_AXI_0_1_ARREADY;
  wire [2:0]S01_AXI_0_1_ARSIZE;
  wire S01_AXI_0_1_ARVALID;
  wire [31:0]S01_AXI_0_1_AWADDR;
  wire [1:0]S01_AXI_0_1_AWBURST;
  wire [3:0]S01_AXI_0_1_AWCACHE;
  wire [7:0]S01_AXI_0_1_AWLEN;
  wire [0:0]S01_AXI_0_1_AWLOCK;
  wire [2:0]S01_AXI_0_1_AWPROT;
  wire [3:0]S01_AXI_0_1_AWQOS;
  wire S01_AXI_0_1_AWREADY;
  wire [2:0]S01_AXI_0_1_AWSIZE;
  wire S01_AXI_0_1_AWVALID;
  wire S01_AXI_0_1_BREADY;
  wire [1:0]S01_AXI_0_1_BRESP;
  wire S01_AXI_0_1_BVALID;
  wire [31:0]S01_AXI_0_1_RDATA;
  wire S01_AXI_0_1_RLAST;
  wire S01_AXI_0_1_RREADY;
  wire [1:0]S01_AXI_0_1_RRESP;
  wire S01_AXI_0_1_RVALID;
  wire [31:0]S01_AXI_0_1_WDATA;
  wire S01_AXI_0_1_WLAST;
  wire S01_AXI_0_1_WREADY;
  wire [3:0]S01_AXI_0_1_WSTRB;
  wire S01_AXI_0_1_WVALID;
  wire [12:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [12:0]axi_bram_ctrl_0_BRAM_PORTB_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTB_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTB_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTB_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTB_EN;
  wire axi_bram_ctrl_0_BRAM_PORTB_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTB_WE;
  wire [0:0]diff_clock_rtl_0_1_CLK_N;
  wire [0:0]diff_clock_rtl_0_1_CLK_P;
  wire reset_rtl_0_1;
  wire [12:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M00_AXI_ARLEN;
  wire [0:0]smartconnect_0_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [12:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M00_AXI_AWLEN;
  wire [0:0]smartconnect_0_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [31:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RLAST;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [31:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [3:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [0:0]util_ds_buf_IBUF_DS_ODIV2;
  wire [0:0]util_ds_buf_IBUF_OUT;
  wire [31:0]xdma_0_M_AXI_B_ARADDR;
  wire [1:0]xdma_0_M_AXI_B_ARBURST;
  wire [3:0]xdma_0_M_AXI_B_ARCACHE;
  wire [3:0]xdma_0_M_AXI_B_ARID;
  wire [7:0]xdma_0_M_AXI_B_ARLEN;
  wire xdma_0_M_AXI_B_ARLOCK;
  wire [2:0]xdma_0_M_AXI_B_ARPROT;
  wire xdma_0_M_AXI_B_ARREADY;
  wire [2:0]xdma_0_M_AXI_B_ARSIZE;
  wire xdma_0_M_AXI_B_ARVALID;
  wire [31:0]xdma_0_M_AXI_B_AWADDR;
  wire [1:0]xdma_0_M_AXI_B_AWBURST;
  wire [3:0]xdma_0_M_AXI_B_AWCACHE;
  wire [3:0]xdma_0_M_AXI_B_AWID;
  wire [7:0]xdma_0_M_AXI_B_AWLEN;
  wire xdma_0_M_AXI_B_AWLOCK;
  wire [2:0]xdma_0_M_AXI_B_AWPROT;
  wire xdma_0_M_AXI_B_AWREADY;
  wire [2:0]xdma_0_M_AXI_B_AWSIZE;
  wire xdma_0_M_AXI_B_AWVALID;
  wire [3:0]xdma_0_M_AXI_B_BID;
  wire xdma_0_M_AXI_B_BREADY;
  wire [1:0]xdma_0_M_AXI_B_BRESP;
  wire xdma_0_M_AXI_B_BVALID;
  wire [255:0]xdma_0_M_AXI_B_RDATA;
  wire [3:0]xdma_0_M_AXI_B_RID;
  wire xdma_0_M_AXI_B_RLAST;
  wire xdma_0_M_AXI_B_RREADY;
  wire [1:0]xdma_0_M_AXI_B_RRESP;
  wire xdma_0_M_AXI_B_RVALID;
  wire [255:0]xdma_0_M_AXI_B_WDATA;
  wire xdma_0_M_AXI_B_WLAST;
  wire xdma_0_M_AXI_B_WREADY;
  wire [31:0]xdma_0_M_AXI_B_WSTRB;
  wire xdma_0_M_AXI_B_WVALID;
  wire xdma_0_axi_aclk;
  wire xdma_0_axi_aresetn;
  wire [7:0]xdma_0_pcie_mgt_rxn;
  wire [7:0]xdma_0_pcie_mgt_rxp;
  wire [7:0]xdma_0_pcie_mgt_txn;
  wire [7:0]xdma_0_pcie_mgt_txp;

  assign CVA6_AXI_arready = S01_AXI_0_1_ARREADY;
  assign CVA6_AXI_awready = S01_AXI_0_1_AWREADY;
  assign CVA6_AXI_bresp[1:0] = S01_AXI_0_1_BRESP;
  assign CVA6_AXI_bvalid = S01_AXI_0_1_BVALID;
  assign CVA6_AXI_rdata[31:0] = S01_AXI_0_1_RDATA;
  assign CVA6_AXI_rlast = S01_AXI_0_1_RLAST;
  assign CVA6_AXI_rresp[1:0] = S01_AXI_0_1_RRESP;
  assign CVA6_AXI_rvalid = S01_AXI_0_1_RVALID;
  assign CVA6_AXI_wready = S01_AXI_0_1_WREADY;
  assign CVA6_CLK = xdma_0_axi_aclk;
  assign S01_AXI_0_1_ARADDR = CVA6_AXI_araddr[31:0];
  assign S01_AXI_0_1_ARBURST = CVA6_AXI_arburst[1:0];
  assign S01_AXI_0_1_ARCACHE = CVA6_AXI_arcache[3:0];
  assign S01_AXI_0_1_ARLEN = CVA6_AXI_arlen[7:0];
  assign S01_AXI_0_1_ARLOCK = CVA6_AXI_arlock[0];
  assign S01_AXI_0_1_ARPROT = CVA6_AXI_arprot[2:0];
  assign S01_AXI_0_1_ARQOS = CVA6_AXI_arqos[3:0];
  assign S01_AXI_0_1_ARSIZE = CVA6_AXI_arsize[2:0];
  assign S01_AXI_0_1_ARVALID = CVA6_AXI_arvalid;
  assign S01_AXI_0_1_AWADDR = CVA6_AXI_awaddr[31:0];
  assign S01_AXI_0_1_AWBURST = CVA6_AXI_awburst[1:0];
  assign S01_AXI_0_1_AWCACHE = CVA6_AXI_awcache[3:0];
  assign S01_AXI_0_1_AWLEN = CVA6_AXI_awlen[7:0];
  assign S01_AXI_0_1_AWLOCK = CVA6_AXI_awlock[0];
  assign S01_AXI_0_1_AWPROT = CVA6_AXI_awprot[2:0];
  assign S01_AXI_0_1_AWQOS = CVA6_AXI_awqos[3:0];
  assign S01_AXI_0_1_AWSIZE = CVA6_AXI_awsize[2:0];
  assign S01_AXI_0_1_AWVALID = CVA6_AXI_awvalid;
  assign S01_AXI_0_1_BREADY = CVA6_AXI_bready;
  assign S01_AXI_0_1_RREADY = CVA6_AXI_rready;
  assign S01_AXI_0_1_WDATA = CVA6_AXI_wdata[31:0];
  assign S01_AXI_0_1_WLAST = CVA6_AXI_wlast;
  assign S01_AXI_0_1_WSTRB = CVA6_AXI_wstrb[3:0];
  assign S01_AXI_0_1_WVALID = CVA6_AXI_wvalid;
  assign diff_clock_rtl_0_1_CLK_N = diff_clock_rtl_0_clk_n[0];
  assign diff_clock_rtl_0_1_CLK_P = diff_clock_rtl_0_clk_p[0];
  assign pcie_7x_mgt_rtl_0_txn[7:0] = xdma_0_pcie_mgt_txn;
  assign pcie_7x_mgt_rtl_0_txp[7:0] = xdma_0_pcie_mgt_txp;
  assign reset_rtl_0_1 = reset_rtl_0;
  assign xdma_0_pcie_mgt_rxn = pcie_7x_mgt_rtl_0_rxn[7:0];
  assign xdma_0_pcie_mgt_rxp = pcie_7x_mgt_rtl_0_rxp[7:0];
  cva6_pcie_design_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_addr_b(axi_bram_ctrl_0_BRAM_PORTB_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_clk_b(axi_bram_ctrl_0_BRAM_PORTB_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_en_b(axi_bram_ctrl_0_BRAM_PORTB_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rddata_b(axi_bram_ctrl_0_BRAM_PORTB_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_rst_b(axi_bram_ctrl_0_BRAM_PORTB_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_we_b(axi_bram_ctrl_0_BRAM_PORTB_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .bram_wrdata_b(axi_bram_ctrl_0_BRAM_PORTB_DIN),
        .s_axi_aclk(xdma_0_axi_aclk),
        .s_axi_araddr(smartconnect_0_M00_AXI_ARADDR),
        .s_axi_arburst(smartconnect_0_M00_AXI_ARBURST),
        .s_axi_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .s_axi_aresetn(xdma_0_axi_aresetn),
        .s_axi_arlen(smartconnect_0_M00_AXI_ARLEN),
        .s_axi_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .s_axi_arprot(smartconnect_0_M00_AXI_ARPROT),
        .s_axi_arready(smartconnect_0_M00_AXI_ARREADY),
        .s_axi_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .s_axi_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .s_axi_awburst(smartconnect_0_M00_AXI_AWBURST),
        .s_axi_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .s_axi_awlen(smartconnect_0_M00_AXI_AWLEN),
        .s_axi_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .s_axi_awprot(smartconnect_0_M00_AXI_AWPROT),
        .s_axi_awready(smartconnect_0_M00_AXI_AWREADY),
        .s_axi_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .s_axi_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M00_AXI_RDATA),
        .s_axi_rlast(smartconnect_0_M00_AXI_RLAST),
        .s_axi_rready(smartconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M00_AXI_WDATA),
        .s_axi_wlast(smartconnect_0_M00_AXI_WLAST),
        .s_axi_wready(smartconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M00_AXI_WVALID));
  cva6_pcie_design_axi_bram_ctrl_0_bram_0 axi_bram_ctrl_0_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTB_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(axi_bram_ctrl_0_BRAM_PORTB_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(axi_bram_ctrl_0_BRAM_PORTB_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(axi_bram_ctrl_0_BRAM_PORTB_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(axi_bram_ctrl_0_BRAM_PORTB_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(axi_bram_ctrl_0_BRAM_PORTB_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(axi_bram_ctrl_0_BRAM_PORTB_WE));
  cva6_pcie_design_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S00_AXI_araddr(xdma_0_M_AXI_B_ARADDR),
        .S00_AXI_arburst(xdma_0_M_AXI_B_ARBURST),
        .S00_AXI_arcache(xdma_0_M_AXI_B_ARCACHE),
        .S00_AXI_arid(xdma_0_M_AXI_B_ARID),
        .S00_AXI_arlen(xdma_0_M_AXI_B_ARLEN),
        .S00_AXI_arlock(xdma_0_M_AXI_B_ARLOCK),
        .S00_AXI_arprot(xdma_0_M_AXI_B_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(xdma_0_M_AXI_B_ARREADY),
        .S00_AXI_arsize(xdma_0_M_AXI_B_ARSIZE),
        .S00_AXI_arvalid(xdma_0_M_AXI_B_ARVALID),
        .S00_AXI_awaddr(xdma_0_M_AXI_B_AWADDR),
        .S00_AXI_awburst(xdma_0_M_AXI_B_AWBURST),
        .S00_AXI_awcache(xdma_0_M_AXI_B_AWCACHE),
        .S00_AXI_awid(xdma_0_M_AXI_B_AWID),
        .S00_AXI_awlen(xdma_0_M_AXI_B_AWLEN),
        .S00_AXI_awlock(xdma_0_M_AXI_B_AWLOCK),
        .S00_AXI_awprot(xdma_0_M_AXI_B_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(xdma_0_M_AXI_B_AWREADY),
        .S00_AXI_awsize(xdma_0_M_AXI_B_AWSIZE),
        .S00_AXI_awvalid(xdma_0_M_AXI_B_AWVALID),
        .S00_AXI_bid(xdma_0_M_AXI_B_BID),
        .S00_AXI_bready(xdma_0_M_AXI_B_BREADY),
        .S00_AXI_bresp(xdma_0_M_AXI_B_BRESP),
        .S00_AXI_bvalid(xdma_0_M_AXI_B_BVALID),
        .S00_AXI_rdata(xdma_0_M_AXI_B_RDATA),
        .S00_AXI_rid(xdma_0_M_AXI_B_RID),
        .S00_AXI_rlast(xdma_0_M_AXI_B_RLAST),
        .S00_AXI_rready(xdma_0_M_AXI_B_RREADY),
        .S00_AXI_rresp(xdma_0_M_AXI_B_RRESP),
        .S00_AXI_rvalid(xdma_0_M_AXI_B_RVALID),
        .S00_AXI_wdata(xdma_0_M_AXI_B_WDATA),
        .S00_AXI_wlast(xdma_0_M_AXI_B_WLAST),
        .S00_AXI_wready(xdma_0_M_AXI_B_WREADY),
        .S00_AXI_wstrb(xdma_0_M_AXI_B_WSTRB),
        .S00_AXI_wvalid(xdma_0_M_AXI_B_WVALID),
        .S01_AXI_araddr(S01_AXI_0_1_ARADDR),
        .S01_AXI_arburst(S01_AXI_0_1_ARBURST),
        .S01_AXI_arcache(S01_AXI_0_1_ARCACHE),
        .S01_AXI_arlen(S01_AXI_0_1_ARLEN),
        .S01_AXI_arlock(S01_AXI_0_1_ARLOCK),
        .S01_AXI_arprot(S01_AXI_0_1_ARPROT),
        .S01_AXI_arqos(S01_AXI_0_1_ARQOS),
        .S01_AXI_arready(S01_AXI_0_1_ARREADY),
        .S01_AXI_arsize(S01_AXI_0_1_ARSIZE),
        .S01_AXI_arvalid(S01_AXI_0_1_ARVALID),
        .S01_AXI_awaddr(S01_AXI_0_1_AWADDR),
        .S01_AXI_awburst(S01_AXI_0_1_AWBURST),
        .S01_AXI_awcache(S01_AXI_0_1_AWCACHE),
        .S01_AXI_awlen(S01_AXI_0_1_AWLEN),
        .S01_AXI_awlock(S01_AXI_0_1_AWLOCK),
        .S01_AXI_awprot(S01_AXI_0_1_AWPROT),
        .S01_AXI_awqos(S01_AXI_0_1_AWQOS),
        .S01_AXI_awready(S01_AXI_0_1_AWREADY),
        .S01_AXI_awsize(S01_AXI_0_1_AWSIZE),
        .S01_AXI_awvalid(S01_AXI_0_1_AWVALID),
        .S01_AXI_bready(S01_AXI_0_1_BREADY),
        .S01_AXI_bresp(S01_AXI_0_1_BRESP),
        .S01_AXI_bvalid(S01_AXI_0_1_BVALID),
        .S01_AXI_rdata(S01_AXI_0_1_RDATA),
        .S01_AXI_rlast(S01_AXI_0_1_RLAST),
        .S01_AXI_rready(S01_AXI_0_1_RREADY),
        .S01_AXI_rresp(S01_AXI_0_1_RRESP),
        .S01_AXI_rvalid(S01_AXI_0_1_RVALID),
        .S01_AXI_wdata(S01_AXI_0_1_WDATA),
        .S01_AXI_wlast(S01_AXI_0_1_WLAST),
        .S01_AXI_wready(S01_AXI_0_1_WREADY),
        .S01_AXI_wstrb(S01_AXI_0_1_WSTRB),
        .S01_AXI_wvalid(S01_AXI_0_1_WVALID),
        .aclk(xdma_0_axi_aclk),
        .aresetn(xdma_0_axi_aresetn));
  cva6_pcie_design_util_ds_buf_0 util_ds_buf
       (.IBUF_DS_N(diff_clock_rtl_0_1_CLK_N),
        .IBUF_DS_ODIV2(util_ds_buf_IBUF_DS_ODIV2),
        .IBUF_DS_P(diff_clock_rtl_0_1_CLK_P),
        .IBUF_OUT(util_ds_buf_IBUF_OUT));
  cva6_pcie_design_xdma_0_0 xdma_0
       (.axi_aclk(xdma_0_axi_aclk),
        .axi_aresetn(xdma_0_axi_aresetn),
        .m_axib_araddr(xdma_0_M_AXI_B_ARADDR),
        .m_axib_arburst(xdma_0_M_AXI_B_ARBURST),
        .m_axib_arcache(xdma_0_M_AXI_B_ARCACHE),
        .m_axib_arid(xdma_0_M_AXI_B_ARID),
        .m_axib_arlen(xdma_0_M_AXI_B_ARLEN),
        .m_axib_arlock(xdma_0_M_AXI_B_ARLOCK),
        .m_axib_arprot(xdma_0_M_AXI_B_ARPROT),
        .m_axib_arready(xdma_0_M_AXI_B_ARREADY),
        .m_axib_arsize(xdma_0_M_AXI_B_ARSIZE),
        .m_axib_arvalid(xdma_0_M_AXI_B_ARVALID),
        .m_axib_awaddr(xdma_0_M_AXI_B_AWADDR),
        .m_axib_awburst(xdma_0_M_AXI_B_AWBURST),
        .m_axib_awcache(xdma_0_M_AXI_B_AWCACHE),
        .m_axib_awid(xdma_0_M_AXI_B_AWID),
        .m_axib_awlen(xdma_0_M_AXI_B_AWLEN),
        .m_axib_awlock(xdma_0_M_AXI_B_AWLOCK),
        .m_axib_awprot(xdma_0_M_AXI_B_AWPROT),
        .m_axib_awready(xdma_0_M_AXI_B_AWREADY),
        .m_axib_awsize(xdma_0_M_AXI_B_AWSIZE),
        .m_axib_awvalid(xdma_0_M_AXI_B_AWVALID),
        .m_axib_bid(xdma_0_M_AXI_B_BID),
        .m_axib_bready(xdma_0_M_AXI_B_BREADY),
        .m_axib_bresp(xdma_0_M_AXI_B_BRESP),
        .m_axib_bvalid(xdma_0_M_AXI_B_BVALID),
        .m_axib_rdata(xdma_0_M_AXI_B_RDATA),
        .m_axib_rid(xdma_0_M_AXI_B_RID),
        .m_axib_rlast(xdma_0_M_AXI_B_RLAST),
        .m_axib_rready(xdma_0_M_AXI_B_RREADY),
        .m_axib_rresp(xdma_0_M_AXI_B_RRESP),
        .m_axib_rvalid(xdma_0_M_AXI_B_RVALID),
        .m_axib_wdata(xdma_0_M_AXI_B_WDATA),
        .m_axib_wlast(xdma_0_M_AXI_B_WLAST),
        .m_axib_wready(xdma_0_M_AXI_B_WREADY),
        .m_axib_wstrb(xdma_0_M_AXI_B_WSTRB),
        .m_axib_wvalid(xdma_0_M_AXI_B_WVALID),
        .pci_exp_rxn(xdma_0_pcie_mgt_rxn),
        .pci_exp_rxp(xdma_0_pcie_mgt_rxp),
        .pci_exp_txn(xdma_0_pcie_mgt_txn),
        .pci_exp_txp(xdma_0_pcie_mgt_txp),
        .s_axib_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axib_arburst({1'b0,1'b1}),
        .s_axib_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axib_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axib_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axib_arsize({1'b1,1'b0,1'b1}),
        .s_axib_arvalid(1'b0),
        .s_axib_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axib_awburst({1'b0,1'b1}),
        .s_axib_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axib_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axib_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axib_awsize({1'b1,1'b0,1'b1}),
        .s_axib_awvalid(1'b0),
        .s_axib_bready(1'b0),
        .s_axib_rready(1'b0),
        .s_axib_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axib_wlast(1'b0),
        .s_axib_wstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axib_wvalid(1'b0),
        .s_axil_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axil_arprot({1'b0,1'b0,1'b0}),
        .s_axil_arvalid(1'b0),
        .s_axil_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axil_awprot({1'b0,1'b0,1'b0}),
        .s_axil_awvalid(1'b0),
        .s_axil_bready(1'b0),
        .s_axil_rready(1'b0),
        .s_axil_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axil_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axil_wvalid(1'b0),
        .sys_clk(util_ds_buf_IBUF_DS_ODIV2),
        .sys_clk_gt(util_ds_buf_IBUF_OUT),
        .sys_rst_n(reset_rtl_0_1),
        .usr_irq_req(1'b0));
endmodule
