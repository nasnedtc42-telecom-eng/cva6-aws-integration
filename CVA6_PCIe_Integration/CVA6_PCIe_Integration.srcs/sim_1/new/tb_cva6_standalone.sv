`timescale 1ns / 1ps

module tb_cva6_standalone();

import ariane_pkg::*;
import axi_pkg::*;

    // ==========================================
    // 1. Clock and Reset Generation
    // ==========================================
    logic clk_i;
    logic rst_ni;

    initial begin
        clk_i = 0;
        forever #5 clk_i = ~clk_i; // 100 MHz Clock
    end

    initial begin
        rst_ni = 0;
        #100;
        rst_ni = 1; // Release reset after 100ns
        $display("[%0t] System Reset Released. Booting CVA6...", $time);
    end

    // ==========================================
    // 2. CVA6 Interface Types (Copied from Top Module)
    // ==========================================
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
    // 3. Signals and Variables
    // ==========================================
    logic [63:0] boot_addr_i = 64'h8000_0000;
    logic [63:0] hart_id_i   = 64'h0;
    logic [1:0]  irq_i       = 2'b00;
    logic        ipi_i       = 1'b0;
    logic        time_irq_i  = 1'b0;
    logic        debug_req_i = 1'b0;

    noc_req_t  noc_req;
    noc_resp_t noc_resp;

    // Initialize noc_resp to avoid X propagation and Vivado Crash
    initial begin
        noc_resp.aw_ready = 1'b0;
        noc_resp.ar_ready = 1'b0;
        noc_resp.w_ready  = 1'b0;
        noc_resp.b_valid  = 1'b0;
        noc_resp.b.id     = '0;
        noc_resp.b.resp   = axi_pkg::RESP_OKAY;
        noc_resp.b.user   = '0;
        noc_resp.r_valid  = 1'b0;
        noc_resp.r.id     = '0;
        noc_resp.r.data   = '0;
        noc_resp.r.resp   = axi_pkg::RESP_OKAY;
        noc_resp.r.last   = 1'b0;
        noc_resp.r.user   = '0;
    end

    // ==========================================
    // 4. Instantiate CVA6 Core (ISOLATION TEST)
    // ==========================================
    cva6 i_cva6_core (
        .clk_i         (clk_i),
        .rst_ni        (rst_ni)
        
        /* --- BAQI TAMAM PORTS COMMENTED HAIN ---
        ,
        .boot_addr_i   (boot_addr_i),
        .hart_id_i     (hart_id_i),
        .irq_i         (irq_i),
        .ipi_i         (ipi_i),
        .time_irq_i    (time_irq_i),
        .debug_req_i   (debug_req_i),
        .rvfi_probes_o (),
        .cvxif_req_o   (),          
        .cvxif_resp_i  ('0),        
        .noc_req_o     (noc_req),
        .noc_resp_i    (noc_resp)
        ----------------------------------------- */
    );

    // ==========================================
    // 5. Basic AXI Behavioral Memory
    // ==========================================
    logic [63:0] main_memory [0:8191];
    logic [63:0] mem_index;

    initial begin
        $readmemh("D:/CVA6/hello_world.hex", main_memory);
        $display("[%0t] HEX File Loaded into Simulation Memory.", $time);
    end

    // Simple Read Logic with BOUNDS CHECKING
    always_ff @(posedge clk_i) begin
        if (!rst_ni) begin
            noc_resp.ar_ready <= 1'b0;
            noc_resp.r_valid  <= 1'b0;
        end else begin
            if (noc_req.ar_valid && !noc_resp.ar_ready) 
                noc_resp.ar_ready <= 1'b1;
            else 
                noc_resp.ar_ready <= 1'b0;

            if (noc_resp.ar_ready && noc_req.ar_valid) begin
                noc_resp.r_valid <= 1'b1;
                noc_resp.r.id    <= noc_req.ar.id;
                noc_resp.r.last  <= 1'b1;
                noc_resp.r.resp  <= axi_pkg::RESP_OKAY;
                
                // Calculate index
                mem_index = (noc_req.ar.addr - boot_addr_i) >> 3;

                if (noc_req.ar.addr >= boot_addr_i && mem_index < 8192) begin
                    noc_resp.r.data <= main_memory[mem_index];
                end else begin
                    noc_resp.r.data <= 64'h0;
                    $display("[%0t] WARNING: Out of Bounds read access at address: %h", $time, noc_req.ar.addr);
                end

            end else if (noc_req.r_ready) begin
                noc_resp.r_valid <= 1'b0;
            end
        end
    end

    // Simple Write Logic
    always_comb begin
        noc_resp.aw_ready = 1'b1; // Always ready to accept address
        noc_resp.w_ready  = 1'b1; // Always ready to accept data
        
        noc_resp.b_valid  = noc_req.w_valid;
        noc_resp.b.id     = noc_req.aw.id;
        noc_resp.b.resp   = axi_pkg::RESP_OKAY;
    end

    // ==========================================
    // 6. Monitor & Timeout
    // ==========================================
    initial begin
        #500000;
        $display("[%0t] Simulation Timeout Reached.", $time);
        $finish;
    end

    always @(posedge clk_i) begin
        if (rst_ni && noc_req.ar_valid && noc_resp.ar_ready) begin
            $display("[%0t] CVA6 Fetching Instruction from Address: %h", $time, noc_req.ar.addr);
        end
    end

endmodule