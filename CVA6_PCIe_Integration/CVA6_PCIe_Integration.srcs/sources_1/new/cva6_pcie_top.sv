`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: [Naveed Ahmed Siddiqui]
// Create Date: 03/16/2026
// Module Name: cva6_pcie_top
// Description: Top Level Motherboard integrating CVA6 Processor and PCIe BRAM Subsystem
//////////////////////////////////////////////////////////////////////////////////

import ariane_pkg::*;
import axi_pkg::*;

module cva6_pcie_top (
    // PCIe Reference Clock
    input  logic [0:0] diff_clock_rtl_0_clk_p,
    input  logic [0:0] diff_clock_rtl_0_clk_n,
    
    // PCIe Main Reset (Active Low)
    input  logic       reset_rtl_0,
    
    // PCIe TX/RX Lanes (X8)
    input  logic [7:0] pcie_7x_mgt_rtl_0_rxp,
    input  logic [7:0] pcie_7x_mgt_rtl_0_rxn,
    output logic [7:0] pcie_7x_mgt_rtl_0_txp,
    output logic [7:0] pcie_7x_mgt_rtl_0_txn
);

    // ==========================================
    // 1. CVA6 AXI Type Definitions (Recreated)
    // ==========================================
    // Fetching the exact config widths used by CVA6
    localparam config_pkg::cva6_cfg_t CVA6Cfg = build_config_pkg::build_config(cva6_config_pkg::cva6_cfg);

    typedef struct packed {
      logic [CVA6Cfg.AxiIdWidth-1:0]   id;
      logic [CVA6Cfg.AxiAddrWidth-1:0] addr;
      axi_pkg::len_t                   len;
      axi_pkg::size_t                  size;
      axi_pkg::burst_t                 burst;
      logic                            lock;
      axi_pkg::cache_t                 cache;
      axi_pkg::prot_t                  prot;
      axi_pkg::qos_t                   qos;
      axi_pkg::region_t                region;
      logic [CVA6Cfg.AxiUserWidth-1:0] user;
    } axi_ar_chan_t;

    typedef struct packed {
      logic [CVA6Cfg.AxiIdWidth-1:0]   id;
      logic [CVA6Cfg.AxiAddrWidth-1:0] addr;
      axi_pkg::len_t                   len;
      axi_pkg::size_t                  size;
      axi_pkg::burst_t                 burst;
      logic                            lock;
      axi_pkg::cache_t                 cache;
      axi_pkg::prot_t                  prot;
      axi_pkg::qos_t                   qos;
      axi_pkg::region_t                region;
      axi_pkg::atop_t                  atop;
      logic [CVA6Cfg.AxiUserWidth-1:0] user;
    } axi_aw_chan_t;

    typedef struct packed {
      logic [CVA6Cfg.AxiDataWidth-1:0]     data;
      logic [(CVA6Cfg.AxiDataWidth/8)-1:0] strb;
      logic                                last;
      logic [CVA6Cfg.AxiUserWidth-1:0]     user;
    } axi_w_chan_t;

    typedef struct packed {
      logic [CVA6Cfg.AxiIdWidth-1:0]   id;
      axi_pkg::resp_t                  resp;
      logic [CVA6Cfg.AxiUserWidth-1:0] user;
    } b_chan_t;

    typedef struct packed {
      logic [CVA6Cfg.AxiIdWidth-1:0]   id;
      logic [CVA6Cfg.AxiDataWidth-1:0] data;
      axi_pkg::resp_t                  resp;
      logic                            last;
      logic [CVA6Cfg.AxiUserWidth-1:0] user;
    } r_chan_t;

    typedef struct packed {
      axi_aw_chan_t aw;
      logic         aw_valid;
      axi_w_chan_t  w;
      logic         w_valid;
      logic         b_ready;
      axi_ar_chan_t ar;
      logic         ar_valid;
      logic         r_ready;
    } noc_req_t;

    typedef struct packed {
      logic    aw_ready;
      logic    ar_ready;
      logic    w_ready;
      logic    b_valid;
      b_chan_t b;
      logic    r_valid;
      r_chan_t r;
    } noc_resp_t;

    // ==========================================
    // 2. Internal Signals
    // ==========================================
    logic cva6_clk;
    noc_req_t  noc_req;
    noc_resp_t noc_resp;

    // ==========================================
    // 3. PCIe Subsystem (Wrapper) Instantiation
    // ==========================================
    cva6_pcie_design_wrapper i_pcie_wrapper (
        // Board Clock & Reset
        .diff_clock_rtl_0_clk_p (diff_clock_rtl_0_clk_p),
        .diff_clock_rtl_0_clk_n (diff_clock_rtl_0_clk_n),
        .reset_rtl_0            (reset_rtl_0),
        
        // Output Clock to drive CVA6 (250 MHz)
        .CVA6_CLK               (cva6_clk), 

        // PCIe Serial Lanes
        .pcie_7x_mgt_rtl_0_rxp  (pcie_7x_mgt_rtl_0_rxp),
        .pcie_7x_mgt_rtl_0_rxn  (pcie_7x_mgt_rtl_0_rxn),
        .pcie_7x_mgt_rtl_0_txp  (pcie_7x_mgt_rtl_0_txp),
        .pcie_7x_mgt_rtl_0_txn  (pcie_7x_mgt_rtl_0_txn),

        // AXI Write Address Channel
        .CVA6_AXI_awvalid (noc_req.aw_valid),
        .CVA6_AXI_awready (noc_resp.aw_ready),
        .CVA6_AXI_awaddr  (noc_req.aw.addr[31:0]),
        .CVA6_AXI_awburst (noc_req.aw.burst),
        .CVA6_AXI_awcache (noc_req.aw.cache),
        .CVA6_AXI_awlen   (noc_req.aw.len),
        .CVA6_AXI_awlock  (noc_req.aw.lock),
        .CVA6_AXI_awprot  (noc_req.aw.prot),
        .CVA6_AXI_awqos   (noc_req.aw.qos),
        .CVA6_AXI_awsize  (noc_req.aw.size),

        // AXI Write Data Channel
        .CVA6_AXI_wvalid  (noc_req.w_valid),
        .CVA6_AXI_wready  (noc_resp.w_ready),
        .CVA6_AXI_wdata   (noc_req.w.data[31:0]),
        .CVA6_AXI_wlast   (noc_req.w.last),
        .CVA6_AXI_wstrb   (noc_req.w.strb[3:0]),

        // AXI Write Response Channel
        .CVA6_AXI_bvalid  (noc_resp.b_valid),
        .CVA6_AXI_bready  (noc_req.b_ready),
        .CVA6_AXI_bresp   (noc_resp.b.resp),

        // AXI Read Address Channel
        .CVA6_AXI_arvalid (noc_req.ar_valid),
        .CVA6_AXI_arready (noc_resp.ar_ready),
        .CVA6_AXI_araddr  (noc_req.ar.addr[31:0]),
        .CVA6_AXI_arburst (noc_req.ar.burst),
        .CVA6_AXI_arcache (noc_req.ar.cache),
        .CVA6_AXI_arlen   (noc_req.ar.len),
        .CVA6_AXI_arlock  (noc_req.ar.lock),
        .CVA6_AXI_arprot  (noc_req.ar.prot),
        .CVA6_AXI_arqos   (noc_req.ar.qos),
        .CVA6_AXI_arsize  (noc_req.ar.size),

        // AXI Read Data Channel
        .CVA6_AXI_rvalid  (noc_resp.r_valid),
        .CVA6_AXI_rready  (noc_req.r_ready),
        .CVA6_AXI_rdata   (noc_resp.r.data[31:0]),
        .CVA6_AXI_rlast   (noc_resp.r.last),
        .CVA6_AXI_rresp   (noc_resp.r.resp)
    );

    // ==========================================
    // 4. Missing AXI Signals Loopback
    // ==========================================
    always_comb begin
        // Zero-pad upper 32 bits of Read Data (Wrapper is 32-bit, CVA6 is 64-bit)
        noc_resp.r.data[63:32] = 32'b0;
        
        // Loopback IDs (CVA6 needs the exact same ID back to retire the transaction)
        noc_resp.b.id = noc_req.aw.id;
        noc_resp.r.id = noc_req.ar.id;
        
        // Tie off unused user signals
        noc_resp.b.user = '0;
        noc_resp.r.user = '0;
    end

    // ==========================================
    // 5. CVA6 Processor Instantiation
    // ==========================================
    cva6 i_cva6_core (
        .clk_i         (cva6_clk),           // 250MHz Clock driven by PCIe Subsystem!
        .rst_ni        (reset_rtl_0),        // Connected to main reset
        
        // Boot address points directly to the BRAM address
        .boot_addr_i   (64'h0000_0000_C000_0000), 
        .hart_id_i     (64'h0),
        
        // Interrupts & Debug (Tied to 0 for standalone test)
        .irq_i         (2'b00),
        .ipi_i         (1'b0),
        .time_irq_i    (1'b0),
        .debug_req_i   (1'b0),
        
        // AXI Bus (NoC) connected to our recreated Structs
        .noc_req_o     (noc_req),
        .noc_resp_i    (noc_resp),

        // Unused Co-processor / RVFI Interfaces
        .rvfi_probes_o (),
        .cvxif_req_o   (),
        .cvxif_resp_i  ('0)
    );

endmodule