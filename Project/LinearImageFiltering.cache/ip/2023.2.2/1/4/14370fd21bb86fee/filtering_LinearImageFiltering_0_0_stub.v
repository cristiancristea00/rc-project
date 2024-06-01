// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.2 (lin64) Build 4126759 Thu Feb  8 23:52:05 MST 2024
// Date        : Sat Jun  1 18:43:12 2024
// Host        : Hephaestion running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ filtering_LinearImageFiltering_0_0_stub.v
// Design      : filtering_LinearImageFiltering_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "LinearImageFilter,Vivado 2023.2.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_control_AWADDR, 
  s_axi_control_AWVALID, s_axi_control_AWREADY, s_axi_control_WDATA, s_axi_control_WSTRB, 
  s_axi_control_WVALID, s_axi_control_WREADY, s_axi_control_BRESP, s_axi_control_BVALID, 
  s_axi_control_BREADY, s_axi_control_ARADDR, s_axi_control_ARVALID, 
  s_axi_control_ARREADY, s_axi_control_RDATA, s_axi_control_RRESP, s_axi_control_RVALID, 
  s_axi_control_RREADY, ap_clk, ap_rst_n, interrupt, m_axi_image_out_AWID, 
  m_axi_image_out_AWADDR, m_axi_image_out_AWLEN, m_axi_image_out_AWSIZE, 
  m_axi_image_out_AWBURST, m_axi_image_out_AWLOCK, m_axi_image_out_AWREGION, 
  m_axi_image_out_AWCACHE, m_axi_image_out_AWPROT, m_axi_image_out_AWQOS, 
  m_axi_image_out_AWVALID, m_axi_image_out_AWREADY, m_axi_image_out_WID, 
  m_axi_image_out_WDATA, m_axi_image_out_WSTRB, m_axi_image_out_WLAST, 
  m_axi_image_out_WVALID, m_axi_image_out_WREADY, m_axi_image_out_BID, 
  m_axi_image_out_BRESP, m_axi_image_out_BVALID, m_axi_image_out_BREADY, 
  m_axi_image_out_ARID, m_axi_image_out_ARADDR, m_axi_image_out_ARLEN, 
  m_axi_image_out_ARSIZE, m_axi_image_out_ARBURST, m_axi_image_out_ARLOCK, 
  m_axi_image_out_ARREGION, m_axi_image_out_ARCACHE, m_axi_image_out_ARPROT, 
  m_axi_image_out_ARQOS, m_axi_image_out_ARVALID, m_axi_image_out_ARREADY, 
  m_axi_image_out_RID, m_axi_image_out_RDATA, m_axi_image_out_RRESP, 
  m_axi_image_out_RLAST, m_axi_image_out_RVALID, m_axi_image_out_RREADY, 
  m_axi_image_in_AWID, m_axi_image_in_AWADDR, m_axi_image_in_AWLEN, 
  m_axi_image_in_AWSIZE, m_axi_image_in_AWBURST, m_axi_image_in_AWLOCK, 
  m_axi_image_in_AWREGION, m_axi_image_in_AWCACHE, m_axi_image_in_AWPROT, 
  m_axi_image_in_AWQOS, m_axi_image_in_AWVALID, m_axi_image_in_AWREADY, 
  m_axi_image_in_WID, m_axi_image_in_WDATA, m_axi_image_in_WSTRB, m_axi_image_in_WLAST, 
  m_axi_image_in_WVALID, m_axi_image_in_WREADY, m_axi_image_in_BID, m_axi_image_in_BRESP, 
  m_axi_image_in_BVALID, m_axi_image_in_BREADY, m_axi_image_in_ARID, 
  m_axi_image_in_ARADDR, m_axi_image_in_ARLEN, m_axi_image_in_ARSIZE, 
  m_axi_image_in_ARBURST, m_axi_image_in_ARLOCK, m_axi_image_in_ARREGION, 
  m_axi_image_in_ARCACHE, m_axi_image_in_ARPROT, m_axi_image_in_ARQOS, 
  m_axi_image_in_ARVALID, m_axi_image_in_ARREADY, m_axi_image_in_RID, 
  m_axi_image_in_RDATA, m_axi_image_in_RRESP, m_axi_image_in_RLAST, 
  m_axi_image_in_RVALID, m_axi_image_in_RREADY, m_axi_kernel_AWID, m_axi_kernel_AWADDR, 
  m_axi_kernel_AWLEN, m_axi_kernel_AWSIZE, m_axi_kernel_AWBURST, m_axi_kernel_AWLOCK, 
  m_axi_kernel_AWREGION, m_axi_kernel_AWCACHE, m_axi_kernel_AWPROT, m_axi_kernel_AWQOS, 
  m_axi_kernel_AWVALID, m_axi_kernel_AWREADY, m_axi_kernel_WID, m_axi_kernel_WDATA, 
  m_axi_kernel_WSTRB, m_axi_kernel_WLAST, m_axi_kernel_WVALID, m_axi_kernel_WREADY, 
  m_axi_kernel_BID, m_axi_kernel_BRESP, m_axi_kernel_BVALID, m_axi_kernel_BREADY, 
  m_axi_kernel_ARID, m_axi_kernel_ARADDR, m_axi_kernel_ARLEN, m_axi_kernel_ARSIZE, 
  m_axi_kernel_ARBURST, m_axi_kernel_ARLOCK, m_axi_kernel_ARREGION, m_axi_kernel_ARCACHE, 
  m_axi_kernel_ARPROT, m_axi_kernel_ARQOS, m_axi_kernel_ARVALID, m_axi_kernel_ARREADY, 
  m_axi_kernel_RID, m_axi_kernel_RDATA, m_axi_kernel_RRESP, m_axi_kernel_RLAST, 
  m_axi_kernel_RVALID, m_axi_kernel_RREADY)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_AWADDR[6:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[6:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_rst_n,interrupt,m_axi_image_out_AWID[0:0],m_axi_image_out_AWADDR[31:0],m_axi_image_out_AWLEN[7:0],m_axi_image_out_AWSIZE[2:0],m_axi_image_out_AWBURST[1:0],m_axi_image_out_AWLOCK[1:0],m_axi_image_out_AWREGION[3:0],m_axi_image_out_AWCACHE[3:0],m_axi_image_out_AWPROT[2:0],m_axi_image_out_AWQOS[3:0],m_axi_image_out_AWVALID,m_axi_image_out_AWREADY,m_axi_image_out_WID[0:0],m_axi_image_out_WDATA[31:0],m_axi_image_out_WSTRB[3:0],m_axi_image_out_WLAST,m_axi_image_out_WVALID,m_axi_image_out_WREADY,m_axi_image_out_BID[0:0],m_axi_image_out_BRESP[1:0],m_axi_image_out_BVALID,m_axi_image_out_BREADY,m_axi_image_out_ARID[0:0],m_axi_image_out_ARADDR[31:0],m_axi_image_out_ARLEN[7:0],m_axi_image_out_ARSIZE[2:0],m_axi_image_out_ARBURST[1:0],m_axi_image_out_ARLOCK[1:0],m_axi_image_out_ARREGION[3:0],m_axi_image_out_ARCACHE[3:0],m_axi_image_out_ARPROT[2:0],m_axi_image_out_ARQOS[3:0],m_axi_image_out_ARVALID,m_axi_image_out_ARREADY,m_axi_image_out_RID[0:0],m_axi_image_out_RDATA[31:0],m_axi_image_out_RRESP[1:0],m_axi_image_out_RLAST,m_axi_image_out_RVALID,m_axi_image_out_RREADY,m_axi_image_in_AWID[0:0],m_axi_image_in_AWADDR[31:0],m_axi_image_in_AWLEN[7:0],m_axi_image_in_AWSIZE[2:0],m_axi_image_in_AWBURST[1:0],m_axi_image_in_AWLOCK[1:0],m_axi_image_in_AWREGION[3:0],m_axi_image_in_AWCACHE[3:0],m_axi_image_in_AWPROT[2:0],m_axi_image_in_AWQOS[3:0],m_axi_image_in_AWVALID,m_axi_image_in_AWREADY,m_axi_image_in_WID[0:0],m_axi_image_in_WDATA[31:0],m_axi_image_in_WSTRB[3:0],m_axi_image_in_WLAST,m_axi_image_in_WVALID,m_axi_image_in_WREADY,m_axi_image_in_BID[0:0],m_axi_image_in_BRESP[1:0],m_axi_image_in_BVALID,m_axi_image_in_BREADY,m_axi_image_in_ARID[0:0],m_axi_image_in_ARADDR[31:0],m_axi_image_in_ARLEN[7:0],m_axi_image_in_ARSIZE[2:0],m_axi_image_in_ARBURST[1:0],m_axi_image_in_ARLOCK[1:0],m_axi_image_in_ARREGION[3:0],m_axi_image_in_ARCACHE[3:0],m_axi_image_in_ARPROT[2:0],m_axi_image_in_ARQOS[3:0],m_axi_image_in_ARVALID,m_axi_image_in_ARREADY,m_axi_image_in_RID[0:0],m_axi_image_in_RDATA[31:0],m_axi_image_in_RRESP[1:0],m_axi_image_in_RLAST,m_axi_image_in_RVALID,m_axi_image_in_RREADY,m_axi_kernel_AWID[0:0],m_axi_kernel_AWADDR[31:0],m_axi_kernel_AWLEN[7:0],m_axi_kernel_AWSIZE[2:0],m_axi_kernel_AWBURST[1:0],m_axi_kernel_AWLOCK[1:0],m_axi_kernel_AWREGION[3:0],m_axi_kernel_AWCACHE[3:0],m_axi_kernel_AWPROT[2:0],m_axi_kernel_AWQOS[3:0],m_axi_kernel_AWVALID,m_axi_kernel_AWREADY,m_axi_kernel_WID[0:0],m_axi_kernel_WDATA[31:0],m_axi_kernel_WSTRB[3:0],m_axi_kernel_WLAST,m_axi_kernel_WVALID,m_axi_kernel_WREADY,m_axi_kernel_BID[0:0],m_axi_kernel_BRESP[1:0],m_axi_kernel_BVALID,m_axi_kernel_BREADY,m_axi_kernel_ARID[0:0],m_axi_kernel_ARADDR[31:0],m_axi_kernel_ARLEN[7:0],m_axi_kernel_ARSIZE[2:0],m_axi_kernel_ARBURST[1:0],m_axi_kernel_ARLOCK[1:0],m_axi_kernel_ARREGION[3:0],m_axi_kernel_ARCACHE[3:0],m_axi_kernel_ARPROT[2:0],m_axi_kernel_ARQOS[3:0],m_axi_kernel_ARVALID,m_axi_kernel_ARREADY,m_axi_kernel_RID[0:0],m_axi_kernel_RDATA[31:0],m_axi_kernel_RRESP[1:0],m_axi_kernel_RLAST,m_axi_kernel_RVALID,m_axi_kernel_RREADY" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  input [6:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [6:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst_n;
  output interrupt;
  output [0:0]m_axi_image_out_AWID;
  output [31:0]m_axi_image_out_AWADDR;
  output [7:0]m_axi_image_out_AWLEN;
  output [2:0]m_axi_image_out_AWSIZE;
  output [1:0]m_axi_image_out_AWBURST;
  output [1:0]m_axi_image_out_AWLOCK;
  output [3:0]m_axi_image_out_AWREGION;
  output [3:0]m_axi_image_out_AWCACHE;
  output [2:0]m_axi_image_out_AWPROT;
  output [3:0]m_axi_image_out_AWQOS;
  output m_axi_image_out_AWVALID;
  input m_axi_image_out_AWREADY;
  output [0:0]m_axi_image_out_WID;
  output [31:0]m_axi_image_out_WDATA;
  output [3:0]m_axi_image_out_WSTRB;
  output m_axi_image_out_WLAST;
  output m_axi_image_out_WVALID;
  input m_axi_image_out_WREADY;
  input [0:0]m_axi_image_out_BID;
  input [1:0]m_axi_image_out_BRESP;
  input m_axi_image_out_BVALID;
  output m_axi_image_out_BREADY;
  output [0:0]m_axi_image_out_ARID;
  output [31:0]m_axi_image_out_ARADDR;
  output [7:0]m_axi_image_out_ARLEN;
  output [2:0]m_axi_image_out_ARSIZE;
  output [1:0]m_axi_image_out_ARBURST;
  output [1:0]m_axi_image_out_ARLOCK;
  output [3:0]m_axi_image_out_ARREGION;
  output [3:0]m_axi_image_out_ARCACHE;
  output [2:0]m_axi_image_out_ARPROT;
  output [3:0]m_axi_image_out_ARQOS;
  output m_axi_image_out_ARVALID;
  input m_axi_image_out_ARREADY;
  input [0:0]m_axi_image_out_RID;
  input [31:0]m_axi_image_out_RDATA;
  input [1:0]m_axi_image_out_RRESP;
  input m_axi_image_out_RLAST;
  input m_axi_image_out_RVALID;
  output m_axi_image_out_RREADY;
  output [0:0]m_axi_image_in_AWID;
  output [31:0]m_axi_image_in_AWADDR;
  output [7:0]m_axi_image_in_AWLEN;
  output [2:0]m_axi_image_in_AWSIZE;
  output [1:0]m_axi_image_in_AWBURST;
  output [1:0]m_axi_image_in_AWLOCK;
  output [3:0]m_axi_image_in_AWREGION;
  output [3:0]m_axi_image_in_AWCACHE;
  output [2:0]m_axi_image_in_AWPROT;
  output [3:0]m_axi_image_in_AWQOS;
  output m_axi_image_in_AWVALID;
  input m_axi_image_in_AWREADY;
  output [0:0]m_axi_image_in_WID;
  output [31:0]m_axi_image_in_WDATA;
  output [3:0]m_axi_image_in_WSTRB;
  output m_axi_image_in_WLAST;
  output m_axi_image_in_WVALID;
  input m_axi_image_in_WREADY;
  input [0:0]m_axi_image_in_BID;
  input [1:0]m_axi_image_in_BRESP;
  input m_axi_image_in_BVALID;
  output m_axi_image_in_BREADY;
  output [0:0]m_axi_image_in_ARID;
  output [31:0]m_axi_image_in_ARADDR;
  output [7:0]m_axi_image_in_ARLEN;
  output [2:0]m_axi_image_in_ARSIZE;
  output [1:0]m_axi_image_in_ARBURST;
  output [1:0]m_axi_image_in_ARLOCK;
  output [3:0]m_axi_image_in_ARREGION;
  output [3:0]m_axi_image_in_ARCACHE;
  output [2:0]m_axi_image_in_ARPROT;
  output [3:0]m_axi_image_in_ARQOS;
  output m_axi_image_in_ARVALID;
  input m_axi_image_in_ARREADY;
  input [0:0]m_axi_image_in_RID;
  input [31:0]m_axi_image_in_RDATA;
  input [1:0]m_axi_image_in_RRESP;
  input m_axi_image_in_RLAST;
  input m_axi_image_in_RVALID;
  output m_axi_image_in_RREADY;
  output [0:0]m_axi_kernel_AWID;
  output [31:0]m_axi_kernel_AWADDR;
  output [7:0]m_axi_kernel_AWLEN;
  output [2:0]m_axi_kernel_AWSIZE;
  output [1:0]m_axi_kernel_AWBURST;
  output [1:0]m_axi_kernel_AWLOCK;
  output [3:0]m_axi_kernel_AWREGION;
  output [3:0]m_axi_kernel_AWCACHE;
  output [2:0]m_axi_kernel_AWPROT;
  output [3:0]m_axi_kernel_AWQOS;
  output m_axi_kernel_AWVALID;
  input m_axi_kernel_AWREADY;
  output [0:0]m_axi_kernel_WID;
  output [31:0]m_axi_kernel_WDATA;
  output [3:0]m_axi_kernel_WSTRB;
  output m_axi_kernel_WLAST;
  output m_axi_kernel_WVALID;
  input m_axi_kernel_WREADY;
  input [0:0]m_axi_kernel_BID;
  input [1:0]m_axi_kernel_BRESP;
  input m_axi_kernel_BVALID;
  output m_axi_kernel_BREADY;
  output [0:0]m_axi_kernel_ARID;
  output [31:0]m_axi_kernel_ARADDR;
  output [7:0]m_axi_kernel_ARLEN;
  output [2:0]m_axi_kernel_ARSIZE;
  output [1:0]m_axi_kernel_ARBURST;
  output [1:0]m_axi_kernel_ARLOCK;
  output [3:0]m_axi_kernel_ARREGION;
  output [3:0]m_axi_kernel_ARCACHE;
  output [2:0]m_axi_kernel_ARPROT;
  output [3:0]m_axi_kernel_ARQOS;
  output m_axi_kernel_ARVALID;
  input m_axi_kernel_ARREADY;
  input [0:0]m_axi_kernel_RID;
  input [31:0]m_axi_kernel_RDATA;
  input [1:0]m_axi_kernel_RRESP;
  input m_axi_kernel_RLAST;
  input m_axi_kernel_RVALID;
  output m_axi_kernel_RREADY;
endmodule
