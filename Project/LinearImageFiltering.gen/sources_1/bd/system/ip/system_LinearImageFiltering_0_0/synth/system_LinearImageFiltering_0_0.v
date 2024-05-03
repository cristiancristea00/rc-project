// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: Cristi:Image:LinearImageFiltering:0.1
// IP Revision: 0

(* X_CORE_INFO = "LinearImageFilter,Vivado 2023.2.2" *)
(* CHECK_LICENSE_TYPE = "system_LinearImageFiltering_0_0,LinearImageFilter,{}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_LinearImageFiltering_0_0 (
  s_axi_control_AWADDR,
  s_axi_control_AWVALID,
  s_axi_control_AWREADY,
  s_axi_control_WDATA,
  s_axi_control_WSTRB,
  s_axi_control_WVALID,
  s_axi_control_WREADY,
  s_axi_control_BRESP,
  s_axi_control_BVALID,
  s_axi_control_BREADY,
  s_axi_control_ARADDR,
  s_axi_control_ARVALID,
  s_axi_control_ARREADY,
  s_axi_control_RDATA,
  s_axi_control_RRESP,
  s_axi_control_RVALID,
  s_axi_control_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  m_axi_image_out_AWID,
  m_axi_image_out_AWADDR,
  m_axi_image_out_AWLEN,
  m_axi_image_out_AWSIZE,
  m_axi_image_out_AWBURST,
  m_axi_image_out_AWLOCK,
  m_axi_image_out_AWREGION,
  m_axi_image_out_AWCACHE,
  m_axi_image_out_AWPROT,
  m_axi_image_out_AWQOS,
  m_axi_image_out_AWVALID,
  m_axi_image_out_AWREADY,
  m_axi_image_out_WID,
  m_axi_image_out_WDATA,
  m_axi_image_out_WSTRB,
  m_axi_image_out_WLAST,
  m_axi_image_out_WVALID,
  m_axi_image_out_WREADY,
  m_axi_image_out_BID,
  m_axi_image_out_BRESP,
  m_axi_image_out_BVALID,
  m_axi_image_out_BREADY,
  m_axi_image_out_ARID,
  m_axi_image_out_ARADDR,
  m_axi_image_out_ARLEN,
  m_axi_image_out_ARSIZE,
  m_axi_image_out_ARBURST,
  m_axi_image_out_ARLOCK,
  m_axi_image_out_ARREGION,
  m_axi_image_out_ARCACHE,
  m_axi_image_out_ARPROT,
  m_axi_image_out_ARQOS,
  m_axi_image_out_ARVALID,
  m_axi_image_out_ARREADY,
  m_axi_image_out_RID,
  m_axi_image_out_RDATA,
  m_axi_image_out_RRESP,
  m_axi_image_out_RLAST,
  m_axi_image_out_RVALID,
  m_axi_image_out_RREADY,
  m_axi_image_in_AWID,
  m_axi_image_in_AWADDR,
  m_axi_image_in_AWLEN,
  m_axi_image_in_AWSIZE,
  m_axi_image_in_AWBURST,
  m_axi_image_in_AWLOCK,
  m_axi_image_in_AWREGION,
  m_axi_image_in_AWCACHE,
  m_axi_image_in_AWPROT,
  m_axi_image_in_AWQOS,
  m_axi_image_in_AWVALID,
  m_axi_image_in_AWREADY,
  m_axi_image_in_WID,
  m_axi_image_in_WDATA,
  m_axi_image_in_WSTRB,
  m_axi_image_in_WLAST,
  m_axi_image_in_WVALID,
  m_axi_image_in_WREADY,
  m_axi_image_in_BID,
  m_axi_image_in_BRESP,
  m_axi_image_in_BVALID,
  m_axi_image_in_BREADY,
  m_axi_image_in_ARID,
  m_axi_image_in_ARADDR,
  m_axi_image_in_ARLEN,
  m_axi_image_in_ARSIZE,
  m_axi_image_in_ARBURST,
  m_axi_image_in_ARLOCK,
  m_axi_image_in_ARREGION,
  m_axi_image_in_ARCACHE,
  m_axi_image_in_ARPROT,
  m_axi_image_in_ARQOS,
  m_axi_image_in_ARVALID,
  m_axi_image_in_ARREADY,
  m_axi_image_in_RID,
  m_axi_image_in_RDATA,
  m_axi_image_in_RRESP,
  m_axi_image_in_RLAST,
  m_axi_image_in_RVALID,
  m_axi_image_in_RREADY,
  m_axi_kernel_AWID,
  m_axi_kernel_AWADDR,
  m_axi_kernel_AWLEN,
  m_axi_kernel_AWSIZE,
  m_axi_kernel_AWBURST,
  m_axi_kernel_AWLOCK,
  m_axi_kernel_AWREGION,
  m_axi_kernel_AWCACHE,
  m_axi_kernel_AWPROT,
  m_axi_kernel_AWQOS,
  m_axi_kernel_AWVALID,
  m_axi_kernel_AWREADY,
  m_axi_kernel_WID,
  m_axi_kernel_WDATA,
  m_axi_kernel_WSTRB,
  m_axi_kernel_WLAST,
  m_axi_kernel_WVALID,
  m_axi_kernel_WREADY,
  m_axi_kernel_BID,
  m_axi_kernel_BRESP,
  m_axi_kernel_BVALID,
  m_axi_kernel_BREADY,
  m_axi_kernel_ARID,
  m_axi_kernel_ARADDR,
  m_axi_kernel_ARLEN,
  m_axi_kernel_ARSIZE,
  m_axi_kernel_ARBURST,
  m_axi_kernel_ARLOCK,
  m_axi_kernel_ARREGION,
  m_axi_kernel_ARCACHE,
  m_axi_kernel_ARPROT,
  m_axi_kernel_ARQOS,
  m_axi_kernel_ARVALID,
  m_axi_kernel_ARREADY,
  m_axi_kernel_RID,
  m_axi_kernel_RDATA,
  m_axi_kernel_RRESP,
  m_axi_kernel_RLAST,
  m_axi_kernel_RVALID,
  m_axi_kernel_RREADY
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *)
input wire [6 : 0] s_axi_control_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *)
input wire s_axi_control_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *)
output wire s_axi_control_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *)
input wire [31 : 0] s_axi_control_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *)
input wire [3 : 0] s_axi_control_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *)
input wire s_axi_control_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *)
output wire s_axi_control_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *)
output wire [1 : 0] s_axi_control_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *)
output wire s_axi_control_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *)
input wire s_axi_control_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *)
input wire [6 : 0] s_axi_control_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *)
input wire s_axi_control_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *)
output wire s_axi_control_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *)
output wire [31 : 0] s_axi_control_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *)
output wire [1 : 0] s_axi_control_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *)
output wire s_axi_control_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 7, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THR\
EADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *)
input wire s_axi_control_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:m_axi_image_out:m_axi_image_in:m_axi_kernel, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out AWID" *)
output wire [0 : 0] m_axi_image_out_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out AWADDR" *)
output wire [31 : 0] m_axi_image_out_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out AWLEN" *)
output wire [7 : 0] m_axi_image_out_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out AWSIZE" *)
output wire [2 : 0] m_axi_image_out_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out AWBURST" *)
output wire [1 : 0] m_axi_image_out_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out AWLOCK" *)
output wire [1 : 0] m_axi_image_out_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out AWREGION" *)
output wire [3 : 0] m_axi_image_out_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out AWCACHE" *)
output wire [3 : 0] m_axi_image_out_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out AWPROT" *)
output wire [2 : 0] m_axi_image_out_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out AWQOS" *)
output wire [3 : 0] m_axi_image_out_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out AWVALID" *)
output wire m_axi_image_out_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out AWREADY" *)
input wire m_axi_image_out_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out WID" *)
output wire [0 : 0] m_axi_image_out_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out WDATA" *)
output wire [31 : 0] m_axi_image_out_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out WSTRB" *)
output wire [3 : 0] m_axi_image_out_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out WLAST" *)
output wire m_axi_image_out_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out WVALID" *)
output wire m_axi_image_out_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out WREADY" *)
input wire m_axi_image_out_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out BID" *)
input wire [0 : 0] m_axi_image_out_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out BRESP" *)
input wire [1 : 0] m_axi_image_out_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out BVALID" *)
input wire m_axi_image_out_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out BREADY" *)
output wire m_axi_image_out_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out ARID" *)
output wire [0 : 0] m_axi_image_out_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out ARADDR" *)
output wire [31 : 0] m_axi_image_out_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out ARLEN" *)
output wire [7 : 0] m_axi_image_out_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out ARSIZE" *)
output wire [2 : 0] m_axi_image_out_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out ARBURST" *)
output wire [1 : 0] m_axi_image_out_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out ARLOCK" *)
output wire [1 : 0] m_axi_image_out_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out ARREGION" *)
output wire [3 : 0] m_axi_image_out_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out ARCACHE" *)
output wire [3 : 0] m_axi_image_out_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out ARPROT" *)
output wire [2 : 0] m_axi_image_out_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out ARQOS" *)
output wire [3 : 0] m_axi_image_out_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out ARVALID" *)
output wire m_axi_image_out_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out ARREADY" *)
input wire m_axi_image_out_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out RID" *)
input wire [0 : 0] m_axi_image_out_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out RDATA" *)
input wire [31 : 0] m_axi_image_out_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out RRESP" *)
input wire [1 : 0] m_axi_image_out_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out RLAST" *)
input wire m_axi_image_out_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out RVALID" *)
input wire m_axi_image_out_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_image_out, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMA\
IN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_out RREADY" *)
output wire m_axi_image_out_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in AWID" *)
output wire [0 : 0] m_axi_image_in_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in AWADDR" *)
output wire [31 : 0] m_axi_image_in_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in AWLEN" *)
output wire [7 : 0] m_axi_image_in_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in AWSIZE" *)
output wire [2 : 0] m_axi_image_in_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in AWBURST" *)
output wire [1 : 0] m_axi_image_in_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in AWLOCK" *)
output wire [1 : 0] m_axi_image_in_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in AWREGION" *)
output wire [3 : 0] m_axi_image_in_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in AWCACHE" *)
output wire [3 : 0] m_axi_image_in_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in AWPROT" *)
output wire [2 : 0] m_axi_image_in_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in AWQOS" *)
output wire [3 : 0] m_axi_image_in_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in AWVALID" *)
output wire m_axi_image_in_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in AWREADY" *)
input wire m_axi_image_in_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in WID" *)
output wire [0 : 0] m_axi_image_in_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in WDATA" *)
output wire [31 : 0] m_axi_image_in_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in WSTRB" *)
output wire [3 : 0] m_axi_image_in_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in WLAST" *)
output wire m_axi_image_in_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in WVALID" *)
output wire m_axi_image_in_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in WREADY" *)
input wire m_axi_image_in_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in BID" *)
input wire [0 : 0] m_axi_image_in_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in BRESP" *)
input wire [1 : 0] m_axi_image_in_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in BVALID" *)
input wire m_axi_image_in_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in BREADY" *)
output wire m_axi_image_in_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in ARID" *)
output wire [0 : 0] m_axi_image_in_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in ARADDR" *)
output wire [31 : 0] m_axi_image_in_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in ARLEN" *)
output wire [7 : 0] m_axi_image_in_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in ARSIZE" *)
output wire [2 : 0] m_axi_image_in_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in ARBURST" *)
output wire [1 : 0] m_axi_image_in_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in ARLOCK" *)
output wire [1 : 0] m_axi_image_in_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in ARREGION" *)
output wire [3 : 0] m_axi_image_in_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in ARCACHE" *)
output wire [3 : 0] m_axi_image_in_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in ARPROT" *)
output wire [2 : 0] m_axi_image_in_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in ARQOS" *)
output wire [3 : 0] m_axi_image_in_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in ARVALID" *)
output wire m_axi_image_in_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in ARREADY" *)
input wire m_axi_image_in_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in RID" *)
input wire [0 : 0] m_axi_image_in_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in RDATA" *)
input wire [31 : 0] m_axi_image_in_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in RRESP" *)
input wire [1 : 0] m_axi_image_in_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in RLAST" *)
input wire m_axi_image_in_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in RVALID" *)
input wire m_axi_image_in_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_image_in, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN\
 system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_image_in RREADY" *)
output wire m_axi_image_in_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel AWID" *)
output wire [0 : 0] m_axi_kernel_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel AWADDR" *)
output wire [31 : 0] m_axi_kernel_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel AWLEN" *)
output wire [7 : 0] m_axi_kernel_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel AWSIZE" *)
output wire [2 : 0] m_axi_kernel_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel AWBURST" *)
output wire [1 : 0] m_axi_kernel_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel AWLOCK" *)
output wire [1 : 0] m_axi_kernel_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel AWREGION" *)
output wire [3 : 0] m_axi_kernel_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel AWCACHE" *)
output wire [3 : 0] m_axi_kernel_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel AWPROT" *)
output wire [2 : 0] m_axi_kernel_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel AWQOS" *)
output wire [3 : 0] m_axi_kernel_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel AWVALID" *)
output wire m_axi_kernel_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel AWREADY" *)
input wire m_axi_kernel_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel WID" *)
output wire [0 : 0] m_axi_kernel_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel WDATA" *)
output wire [31 : 0] m_axi_kernel_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel WSTRB" *)
output wire [3 : 0] m_axi_kernel_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel WLAST" *)
output wire m_axi_kernel_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel WVALID" *)
output wire m_axi_kernel_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel WREADY" *)
input wire m_axi_kernel_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel BID" *)
input wire [0 : 0] m_axi_kernel_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel BRESP" *)
input wire [1 : 0] m_axi_kernel_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel BVALID" *)
input wire m_axi_kernel_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel BREADY" *)
output wire m_axi_kernel_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel ARID" *)
output wire [0 : 0] m_axi_kernel_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel ARADDR" *)
output wire [31 : 0] m_axi_kernel_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel ARLEN" *)
output wire [7 : 0] m_axi_kernel_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel ARSIZE" *)
output wire [2 : 0] m_axi_kernel_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel ARBURST" *)
output wire [1 : 0] m_axi_kernel_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel ARLOCK" *)
output wire [1 : 0] m_axi_kernel_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel ARREGION" *)
output wire [3 : 0] m_axi_kernel_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel ARCACHE" *)
output wire [3 : 0] m_axi_kernel_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel ARPROT" *)
output wire [2 : 0] m_axi_kernel_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel ARQOS" *)
output wire [3 : 0] m_axi_kernel_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel ARVALID" *)
output wire m_axi_kernel_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel ARREADY" *)
input wire m_axi_kernel_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel RID" *)
input wire [0 : 0] m_axi_kernel_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel RDATA" *)
input wire [31 : 0] m_axi_kernel_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel RRESP" *)
input wire [1 : 0] m_axi_kernel_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel RLAST" *)
input wire m_axi_kernel_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel RVALID" *)
input wire m_axi_kernel_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_kernel, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN s\
ystem_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_kernel RREADY" *)
output wire m_axi_kernel_RREADY;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SYNTH_INST = "inst" *)
  LinearImageFilter #(
    .C_S_AXI_CONTROL_ADDR_WIDTH(7),
    .C_S_AXI_CONTROL_DATA_WIDTH(32),
    .C_M_AXI_IMAGE_OUT_ID_WIDTH(1),
    .C_M_AXI_IMAGE_OUT_ADDR_WIDTH(32),
    .C_M_AXI_IMAGE_OUT_DATA_WIDTH(32),
    .C_M_AXI_IMAGE_OUT_AWUSER_WIDTH(1),
    .C_M_AXI_IMAGE_OUT_ARUSER_WIDTH(1),
    .C_M_AXI_IMAGE_OUT_WUSER_WIDTH(1),
    .C_M_AXI_IMAGE_OUT_RUSER_WIDTH(1),
    .C_M_AXI_IMAGE_OUT_BUSER_WIDTH(1),
    .C_M_AXI_IMAGE_OUT_USER_VALUE(32'H00000000),
    .C_M_AXI_IMAGE_OUT_PROT_VALUE(3'B000),
    .C_M_AXI_IMAGE_OUT_CACHE_VALUE(4'B0011),
    .C_M_AXI_IMAGE_IN_ID_WIDTH(1),
    .C_M_AXI_IMAGE_IN_ADDR_WIDTH(32),
    .C_M_AXI_IMAGE_IN_DATA_WIDTH(32),
    .C_M_AXI_IMAGE_IN_AWUSER_WIDTH(1),
    .C_M_AXI_IMAGE_IN_ARUSER_WIDTH(1),
    .C_M_AXI_IMAGE_IN_WUSER_WIDTH(1),
    .C_M_AXI_IMAGE_IN_RUSER_WIDTH(1),
    .C_M_AXI_IMAGE_IN_BUSER_WIDTH(1),
    .C_M_AXI_IMAGE_IN_USER_VALUE(32'H00000000),
    .C_M_AXI_IMAGE_IN_PROT_VALUE(3'B000),
    .C_M_AXI_IMAGE_IN_CACHE_VALUE(4'B0011),
    .C_M_AXI_KERNEL_ID_WIDTH(1),
    .C_M_AXI_KERNEL_ADDR_WIDTH(32),
    .C_M_AXI_KERNEL_DATA_WIDTH(32),
    .C_M_AXI_KERNEL_AWUSER_WIDTH(1),
    .C_M_AXI_KERNEL_ARUSER_WIDTH(1),
    .C_M_AXI_KERNEL_WUSER_WIDTH(1),
    .C_M_AXI_KERNEL_RUSER_WIDTH(1),
    .C_M_AXI_KERNEL_BUSER_WIDTH(1),
    .C_M_AXI_KERNEL_USER_VALUE(32'H00000000),
    .C_M_AXI_KERNEL_PROT_VALUE(3'B000),
    .C_M_AXI_KERNEL_CACHE_VALUE(4'B0011)
  ) inst (
    .s_axi_control_AWADDR(s_axi_control_AWADDR),
    .s_axi_control_AWVALID(s_axi_control_AWVALID),
    .s_axi_control_AWREADY(s_axi_control_AWREADY),
    .s_axi_control_WDATA(s_axi_control_WDATA),
    .s_axi_control_WSTRB(s_axi_control_WSTRB),
    .s_axi_control_WVALID(s_axi_control_WVALID),
    .s_axi_control_WREADY(s_axi_control_WREADY),
    .s_axi_control_BRESP(s_axi_control_BRESP),
    .s_axi_control_BVALID(s_axi_control_BVALID),
    .s_axi_control_BREADY(s_axi_control_BREADY),
    .s_axi_control_ARADDR(s_axi_control_ARADDR),
    .s_axi_control_ARVALID(s_axi_control_ARVALID),
    .s_axi_control_ARREADY(s_axi_control_ARREADY),
    .s_axi_control_RDATA(s_axi_control_RDATA),
    .s_axi_control_RRESP(s_axi_control_RRESP),
    .s_axi_control_RVALID(s_axi_control_RVALID),
    .s_axi_control_RREADY(s_axi_control_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .m_axi_image_out_AWID(m_axi_image_out_AWID),
    .m_axi_image_out_AWADDR(m_axi_image_out_AWADDR),
    .m_axi_image_out_AWLEN(m_axi_image_out_AWLEN),
    .m_axi_image_out_AWSIZE(m_axi_image_out_AWSIZE),
    .m_axi_image_out_AWBURST(m_axi_image_out_AWBURST),
    .m_axi_image_out_AWLOCK(m_axi_image_out_AWLOCK),
    .m_axi_image_out_AWREGION(m_axi_image_out_AWREGION),
    .m_axi_image_out_AWCACHE(m_axi_image_out_AWCACHE),
    .m_axi_image_out_AWPROT(m_axi_image_out_AWPROT),
    .m_axi_image_out_AWQOS(m_axi_image_out_AWQOS),
    .m_axi_image_out_AWUSER(),
    .m_axi_image_out_AWVALID(m_axi_image_out_AWVALID),
    .m_axi_image_out_AWREADY(m_axi_image_out_AWREADY),
    .m_axi_image_out_WID(m_axi_image_out_WID),
    .m_axi_image_out_WDATA(m_axi_image_out_WDATA),
    .m_axi_image_out_WSTRB(m_axi_image_out_WSTRB),
    .m_axi_image_out_WLAST(m_axi_image_out_WLAST),
    .m_axi_image_out_WUSER(),
    .m_axi_image_out_WVALID(m_axi_image_out_WVALID),
    .m_axi_image_out_WREADY(m_axi_image_out_WREADY),
    .m_axi_image_out_BID(m_axi_image_out_BID),
    .m_axi_image_out_BRESP(m_axi_image_out_BRESP),
    .m_axi_image_out_BUSER(1'B0),
    .m_axi_image_out_BVALID(m_axi_image_out_BVALID),
    .m_axi_image_out_BREADY(m_axi_image_out_BREADY),
    .m_axi_image_out_ARID(m_axi_image_out_ARID),
    .m_axi_image_out_ARADDR(m_axi_image_out_ARADDR),
    .m_axi_image_out_ARLEN(m_axi_image_out_ARLEN),
    .m_axi_image_out_ARSIZE(m_axi_image_out_ARSIZE),
    .m_axi_image_out_ARBURST(m_axi_image_out_ARBURST),
    .m_axi_image_out_ARLOCK(m_axi_image_out_ARLOCK),
    .m_axi_image_out_ARREGION(m_axi_image_out_ARREGION),
    .m_axi_image_out_ARCACHE(m_axi_image_out_ARCACHE),
    .m_axi_image_out_ARPROT(m_axi_image_out_ARPROT),
    .m_axi_image_out_ARQOS(m_axi_image_out_ARQOS),
    .m_axi_image_out_ARUSER(),
    .m_axi_image_out_ARVALID(m_axi_image_out_ARVALID),
    .m_axi_image_out_ARREADY(m_axi_image_out_ARREADY),
    .m_axi_image_out_RID(m_axi_image_out_RID),
    .m_axi_image_out_RDATA(m_axi_image_out_RDATA),
    .m_axi_image_out_RRESP(m_axi_image_out_RRESP),
    .m_axi_image_out_RLAST(m_axi_image_out_RLAST),
    .m_axi_image_out_RUSER(1'B0),
    .m_axi_image_out_RVALID(m_axi_image_out_RVALID),
    .m_axi_image_out_RREADY(m_axi_image_out_RREADY),
    .m_axi_image_in_AWID(m_axi_image_in_AWID),
    .m_axi_image_in_AWADDR(m_axi_image_in_AWADDR),
    .m_axi_image_in_AWLEN(m_axi_image_in_AWLEN),
    .m_axi_image_in_AWSIZE(m_axi_image_in_AWSIZE),
    .m_axi_image_in_AWBURST(m_axi_image_in_AWBURST),
    .m_axi_image_in_AWLOCK(m_axi_image_in_AWLOCK),
    .m_axi_image_in_AWREGION(m_axi_image_in_AWREGION),
    .m_axi_image_in_AWCACHE(m_axi_image_in_AWCACHE),
    .m_axi_image_in_AWPROT(m_axi_image_in_AWPROT),
    .m_axi_image_in_AWQOS(m_axi_image_in_AWQOS),
    .m_axi_image_in_AWUSER(),
    .m_axi_image_in_AWVALID(m_axi_image_in_AWVALID),
    .m_axi_image_in_AWREADY(m_axi_image_in_AWREADY),
    .m_axi_image_in_WID(m_axi_image_in_WID),
    .m_axi_image_in_WDATA(m_axi_image_in_WDATA),
    .m_axi_image_in_WSTRB(m_axi_image_in_WSTRB),
    .m_axi_image_in_WLAST(m_axi_image_in_WLAST),
    .m_axi_image_in_WUSER(),
    .m_axi_image_in_WVALID(m_axi_image_in_WVALID),
    .m_axi_image_in_WREADY(m_axi_image_in_WREADY),
    .m_axi_image_in_BID(m_axi_image_in_BID),
    .m_axi_image_in_BRESP(m_axi_image_in_BRESP),
    .m_axi_image_in_BUSER(1'B0),
    .m_axi_image_in_BVALID(m_axi_image_in_BVALID),
    .m_axi_image_in_BREADY(m_axi_image_in_BREADY),
    .m_axi_image_in_ARID(m_axi_image_in_ARID),
    .m_axi_image_in_ARADDR(m_axi_image_in_ARADDR),
    .m_axi_image_in_ARLEN(m_axi_image_in_ARLEN),
    .m_axi_image_in_ARSIZE(m_axi_image_in_ARSIZE),
    .m_axi_image_in_ARBURST(m_axi_image_in_ARBURST),
    .m_axi_image_in_ARLOCK(m_axi_image_in_ARLOCK),
    .m_axi_image_in_ARREGION(m_axi_image_in_ARREGION),
    .m_axi_image_in_ARCACHE(m_axi_image_in_ARCACHE),
    .m_axi_image_in_ARPROT(m_axi_image_in_ARPROT),
    .m_axi_image_in_ARQOS(m_axi_image_in_ARQOS),
    .m_axi_image_in_ARUSER(),
    .m_axi_image_in_ARVALID(m_axi_image_in_ARVALID),
    .m_axi_image_in_ARREADY(m_axi_image_in_ARREADY),
    .m_axi_image_in_RID(m_axi_image_in_RID),
    .m_axi_image_in_RDATA(m_axi_image_in_RDATA),
    .m_axi_image_in_RRESP(m_axi_image_in_RRESP),
    .m_axi_image_in_RLAST(m_axi_image_in_RLAST),
    .m_axi_image_in_RUSER(1'B0),
    .m_axi_image_in_RVALID(m_axi_image_in_RVALID),
    .m_axi_image_in_RREADY(m_axi_image_in_RREADY),
    .m_axi_kernel_AWID(m_axi_kernel_AWID),
    .m_axi_kernel_AWADDR(m_axi_kernel_AWADDR),
    .m_axi_kernel_AWLEN(m_axi_kernel_AWLEN),
    .m_axi_kernel_AWSIZE(m_axi_kernel_AWSIZE),
    .m_axi_kernel_AWBURST(m_axi_kernel_AWBURST),
    .m_axi_kernel_AWLOCK(m_axi_kernel_AWLOCK),
    .m_axi_kernel_AWREGION(m_axi_kernel_AWREGION),
    .m_axi_kernel_AWCACHE(m_axi_kernel_AWCACHE),
    .m_axi_kernel_AWPROT(m_axi_kernel_AWPROT),
    .m_axi_kernel_AWQOS(m_axi_kernel_AWQOS),
    .m_axi_kernel_AWUSER(),
    .m_axi_kernel_AWVALID(m_axi_kernel_AWVALID),
    .m_axi_kernel_AWREADY(m_axi_kernel_AWREADY),
    .m_axi_kernel_WID(m_axi_kernel_WID),
    .m_axi_kernel_WDATA(m_axi_kernel_WDATA),
    .m_axi_kernel_WSTRB(m_axi_kernel_WSTRB),
    .m_axi_kernel_WLAST(m_axi_kernel_WLAST),
    .m_axi_kernel_WUSER(),
    .m_axi_kernel_WVALID(m_axi_kernel_WVALID),
    .m_axi_kernel_WREADY(m_axi_kernel_WREADY),
    .m_axi_kernel_BID(m_axi_kernel_BID),
    .m_axi_kernel_BRESP(m_axi_kernel_BRESP),
    .m_axi_kernel_BUSER(1'B0),
    .m_axi_kernel_BVALID(m_axi_kernel_BVALID),
    .m_axi_kernel_BREADY(m_axi_kernel_BREADY),
    .m_axi_kernel_ARID(m_axi_kernel_ARID),
    .m_axi_kernel_ARADDR(m_axi_kernel_ARADDR),
    .m_axi_kernel_ARLEN(m_axi_kernel_ARLEN),
    .m_axi_kernel_ARSIZE(m_axi_kernel_ARSIZE),
    .m_axi_kernel_ARBURST(m_axi_kernel_ARBURST),
    .m_axi_kernel_ARLOCK(m_axi_kernel_ARLOCK),
    .m_axi_kernel_ARREGION(m_axi_kernel_ARREGION),
    .m_axi_kernel_ARCACHE(m_axi_kernel_ARCACHE),
    .m_axi_kernel_ARPROT(m_axi_kernel_ARPROT),
    .m_axi_kernel_ARQOS(m_axi_kernel_ARQOS),
    .m_axi_kernel_ARUSER(),
    .m_axi_kernel_ARVALID(m_axi_kernel_ARVALID),
    .m_axi_kernel_ARREADY(m_axi_kernel_ARREADY),
    .m_axi_kernel_RID(m_axi_kernel_RID),
    .m_axi_kernel_RDATA(m_axi_kernel_RDATA),
    .m_axi_kernel_RRESP(m_axi_kernel_RRESP),
    .m_axi_kernel_RLAST(m_axi_kernel_RLAST),
    .m_axi_kernel_RUSER(1'B0),
    .m_axi_kernel_RVALID(m_axi_kernel_RVALID),
    .m_axi_kernel_RREADY(m_axi_kernel_RREADY)
  );
endmodule
