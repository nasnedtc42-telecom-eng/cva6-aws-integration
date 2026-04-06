// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Mar 16 10:28:26 2026
// Host        : NaveedTechbook running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top cva6_pcie_design_axi_bram_ctrl_0_bram_0 -prefix
//               cva6_pcie_design_axi_bram_ctrl_0_bram_0_ cva6_pcie_design_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : cva6_pcie_design_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku3p-ffva676-3-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cva6_pcie_design_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module cva6_pcie_design_axi_bram_ctrl_0_bram_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     8.625424 mW" *) 
  (* C_FAMILY = "kintexuplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "kintexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  cva6_pcie_design_axi_bram_ctrl_0_bram_0_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64432)
`pragma protect data_block
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
9TRVsUixYas7aJu+yL2I8ZXH6M1Rrg==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
