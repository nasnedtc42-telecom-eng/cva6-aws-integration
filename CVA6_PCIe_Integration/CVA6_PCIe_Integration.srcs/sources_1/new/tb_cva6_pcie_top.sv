`timescale 1ns / 1ps

module tb_cva6_pcie_top();

    // 1. Signals for driving the Top Module
    logic diff_clock_p;
    logic diff_clock_n;
    logic reset_n;

    // Dummy signals for PCIe Serial Lanes (Simulation kay liye zaroori hain)
    logic [7:0] rxp, rxn, txp, txn;

    // 2. Instantiate our Main Motherboard (DUT - Design Under Test)
    cva6_pcie_top dut (
        .diff_clock_rtl_0_clk_p (diff_clock_p),
        .diff_clock_rtl_0_clk_n (diff_clock_n),
        .reset_rtl_0            (reset_n),
        .pcie_7x_mgt_rtl_0_rxp  (rxp),
        .pcie_7x_mgt_rtl_0_rxn  (rxn),
        .pcie_7x_mgt_rtl_0_txp  (txp),
        .pcie_7x_mgt_rtl_0_txn  (txn)
    );

    // 3. Generate 100 MHz Differential Clock for PCIe/System
    initial begin
        diff_clock_p = 0;
        diff_clock_n = 1;
        forever #5 begin // 10ns period = 100 MHz
            diff_clock_p = ~diff_clock_p;
            diff_clock_n = ~diff_clock_n;
        end
    end

    // 4. Memory Initialization (100% Accurate Path from your uploaded file)
    initial begin
        // Using forward slashes for the path as required by SystemVerilog
        $readmemh("D:/CVA6/hello_world.hex", dut.i_pcie_wrapper.cva6_pcie_design_i.axi_bram_ctrl_0_bram.inst.native_mem_module.blk_mem_gen_v8_4_5_inst.memory);
    end

    // 5. Main Simulation Sequence
    initial begin
        $display("==========================================");
        $display("Starting CVA6 'Hello World' Simulation...");
        $display("==========================================");
        
        // Initial state (System OFF)
        reset_n = 0;
        rxp = 8'h00;
        rxn = 8'hFF;
        
        // Wait 100ns and then release reset to Boot CVA6
        #100;
        reset_n = 1;
        $display("[%0t] Reset Released! Processor should start booting...", $time);
        
        // Let the simulation run for an extended time to allow instruction fetch and execution
        #500000; 
        
        $display("[%0t] Simulation Finished.", $time);
        $finish;
    end

    // 6. Monitor AXI Bus Activity (To verify CVA6 behavior)
    always @(posedge dut.cva6_clk) begin
        if (reset_n) begin
            // Monitor Read Address (Fetch Instructions)
            if (dut.noc_req.ar_valid && dut.noc_resp.ar_ready) begin
                $display("[%0t] CVA6 FETCH ADDR: %h", $time, dut.noc_req.ar.addr);
            end

            // Monitor Write Data (When CVA6 sends Hello World characters out)
            if (dut.noc_req.w_valid && dut.noc_resp.w_ready) begin
                $display("[%0t] CVA6 AXI WRITE DATA: %h (Char: %c)", 
                          $time, dut.noc_req.w.data, dut.noc_req.w.data[7:0]);
            end
        end
    end

endmodule