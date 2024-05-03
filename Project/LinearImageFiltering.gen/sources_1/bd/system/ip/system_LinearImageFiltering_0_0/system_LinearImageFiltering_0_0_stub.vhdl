-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2.2 (lin64) Build 4126759 Thu Feb  8 23:52:05 MST 2024
-- Date        : Fri May  3 11:15:46 2024
-- Host        : Hephaestion running 64-bit Ubuntu 24.04 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/cristian/Documents/ACES/RC-Project/Project/LinearImageFiltering.gen/sources_1/bd/system/ip/system_LinearImageFiltering_0_0/system_LinearImageFiltering_0_0_stub.vhdl
-- Design      : system_LinearImageFiltering_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_LinearImageFiltering_0_0 is
  Port ( 
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_image_out_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_image_out_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_image_out_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_image_out_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_image_out_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_image_out_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_image_out_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_image_out_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_image_out_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_image_out_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_image_out_AWVALID : out STD_LOGIC;
    m_axi_image_out_AWREADY : in STD_LOGIC;
    m_axi_image_out_WID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_image_out_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_image_out_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_image_out_WLAST : out STD_LOGIC;
    m_axi_image_out_WVALID : out STD_LOGIC;
    m_axi_image_out_WREADY : in STD_LOGIC;
    m_axi_image_out_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_image_out_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_image_out_BVALID : in STD_LOGIC;
    m_axi_image_out_BREADY : out STD_LOGIC;
    m_axi_image_out_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_image_out_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_image_out_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_image_out_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_image_out_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_image_out_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_image_out_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_image_out_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_image_out_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_image_out_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_image_out_ARVALID : out STD_LOGIC;
    m_axi_image_out_ARREADY : in STD_LOGIC;
    m_axi_image_out_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_image_out_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_image_out_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_image_out_RLAST : in STD_LOGIC;
    m_axi_image_out_RVALID : in STD_LOGIC;
    m_axi_image_out_RREADY : out STD_LOGIC;
    m_axi_image_in_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_image_in_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_image_in_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_image_in_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_image_in_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_image_in_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_image_in_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_image_in_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_image_in_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_image_in_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_image_in_AWVALID : out STD_LOGIC;
    m_axi_image_in_AWREADY : in STD_LOGIC;
    m_axi_image_in_WID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_image_in_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_image_in_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_image_in_WLAST : out STD_LOGIC;
    m_axi_image_in_WVALID : out STD_LOGIC;
    m_axi_image_in_WREADY : in STD_LOGIC;
    m_axi_image_in_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_image_in_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_image_in_BVALID : in STD_LOGIC;
    m_axi_image_in_BREADY : out STD_LOGIC;
    m_axi_image_in_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_image_in_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_image_in_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_image_in_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_image_in_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_image_in_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_image_in_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_image_in_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_image_in_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_image_in_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_image_in_ARVALID : out STD_LOGIC;
    m_axi_image_in_ARREADY : in STD_LOGIC;
    m_axi_image_in_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_image_in_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_image_in_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_image_in_RLAST : in STD_LOGIC;
    m_axi_image_in_RVALID : in STD_LOGIC;
    m_axi_image_in_RREADY : out STD_LOGIC;
    m_axi_kernel_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_kernel_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_kernel_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_kernel_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_kernel_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_kernel_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_kernel_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_kernel_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_kernel_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_kernel_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_kernel_AWVALID : out STD_LOGIC;
    m_axi_kernel_AWREADY : in STD_LOGIC;
    m_axi_kernel_WID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_kernel_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_kernel_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_kernel_WLAST : out STD_LOGIC;
    m_axi_kernel_WVALID : out STD_LOGIC;
    m_axi_kernel_WREADY : in STD_LOGIC;
    m_axi_kernel_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_kernel_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_kernel_BVALID : in STD_LOGIC;
    m_axi_kernel_BREADY : out STD_LOGIC;
    m_axi_kernel_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_kernel_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_kernel_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_kernel_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_kernel_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_kernel_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_kernel_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_kernel_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_kernel_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_kernel_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_kernel_ARVALID : out STD_LOGIC;
    m_axi_kernel_ARREADY : in STD_LOGIC;
    m_axi_kernel_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_kernel_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_kernel_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_kernel_RLAST : in STD_LOGIC;
    m_axi_kernel_RVALID : in STD_LOGIC;
    m_axi_kernel_RREADY : out STD_LOGIC
  );

end system_LinearImageFiltering_0_0;

architecture stub of system_LinearImageFiltering_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_control_AWADDR[6:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[6:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_image_out_AWID[0:0],m_axi_image_out_AWADDR[31:0],m_axi_image_out_AWLEN[7:0],m_axi_image_out_AWSIZE[2:0],m_axi_image_out_AWBURST[1:0],m_axi_image_out_AWLOCK[1:0],m_axi_image_out_AWREGION[3:0],m_axi_image_out_AWCACHE[3:0],m_axi_image_out_AWPROT[2:0],m_axi_image_out_AWQOS[3:0],m_axi_image_out_AWVALID,m_axi_image_out_AWREADY,m_axi_image_out_WID[0:0],m_axi_image_out_WDATA[31:0],m_axi_image_out_WSTRB[3:0],m_axi_image_out_WLAST,m_axi_image_out_WVALID,m_axi_image_out_WREADY,m_axi_image_out_BID[0:0],m_axi_image_out_BRESP[1:0],m_axi_image_out_BVALID,m_axi_image_out_BREADY,m_axi_image_out_ARID[0:0],m_axi_image_out_ARADDR[31:0],m_axi_image_out_ARLEN[7:0],m_axi_image_out_ARSIZE[2:0],m_axi_image_out_ARBURST[1:0],m_axi_image_out_ARLOCK[1:0],m_axi_image_out_ARREGION[3:0],m_axi_image_out_ARCACHE[3:0],m_axi_image_out_ARPROT[2:0],m_axi_image_out_ARQOS[3:0],m_axi_image_out_ARVALID,m_axi_image_out_ARREADY,m_axi_image_out_RID[0:0],m_axi_image_out_RDATA[31:0],m_axi_image_out_RRESP[1:0],m_axi_image_out_RLAST,m_axi_image_out_RVALID,m_axi_image_out_RREADY,m_axi_image_in_AWID[0:0],m_axi_image_in_AWADDR[31:0],m_axi_image_in_AWLEN[7:0],m_axi_image_in_AWSIZE[2:0],m_axi_image_in_AWBURST[1:0],m_axi_image_in_AWLOCK[1:0],m_axi_image_in_AWREGION[3:0],m_axi_image_in_AWCACHE[3:0],m_axi_image_in_AWPROT[2:0],m_axi_image_in_AWQOS[3:0],m_axi_image_in_AWVALID,m_axi_image_in_AWREADY,m_axi_image_in_WID[0:0],m_axi_image_in_WDATA[31:0],m_axi_image_in_WSTRB[3:0],m_axi_image_in_WLAST,m_axi_image_in_WVALID,m_axi_image_in_WREADY,m_axi_image_in_BID[0:0],m_axi_image_in_BRESP[1:0],m_axi_image_in_BVALID,m_axi_image_in_BREADY,m_axi_image_in_ARID[0:0],m_axi_image_in_ARADDR[31:0],m_axi_image_in_ARLEN[7:0],m_axi_image_in_ARSIZE[2:0],m_axi_image_in_ARBURST[1:0],m_axi_image_in_ARLOCK[1:0],m_axi_image_in_ARREGION[3:0],m_axi_image_in_ARCACHE[3:0],m_axi_image_in_ARPROT[2:0],m_axi_image_in_ARQOS[3:0],m_axi_image_in_ARVALID,m_axi_image_in_ARREADY,m_axi_image_in_RID[0:0],m_axi_image_in_RDATA[31:0],m_axi_image_in_RRESP[1:0],m_axi_image_in_RLAST,m_axi_image_in_RVALID,m_axi_image_in_RREADY,m_axi_kernel_AWID[0:0],m_axi_kernel_AWADDR[31:0],m_axi_kernel_AWLEN[7:0],m_axi_kernel_AWSIZE[2:0],m_axi_kernel_AWBURST[1:0],m_axi_kernel_AWLOCK[1:0],m_axi_kernel_AWREGION[3:0],m_axi_kernel_AWCACHE[3:0],m_axi_kernel_AWPROT[2:0],m_axi_kernel_AWQOS[3:0],m_axi_kernel_AWVALID,m_axi_kernel_AWREADY,m_axi_kernel_WID[0:0],m_axi_kernel_WDATA[31:0],m_axi_kernel_WSTRB[3:0],m_axi_kernel_WLAST,m_axi_kernel_WVALID,m_axi_kernel_WREADY,m_axi_kernel_BID[0:0],m_axi_kernel_BRESP[1:0],m_axi_kernel_BVALID,m_axi_kernel_BREADY,m_axi_kernel_ARID[0:0],m_axi_kernel_ARADDR[31:0],m_axi_kernel_ARLEN[7:0],m_axi_kernel_ARSIZE[2:0],m_axi_kernel_ARBURST[1:0],m_axi_kernel_ARLOCK[1:0],m_axi_kernel_ARREGION[3:0],m_axi_kernel_ARCACHE[3:0],m_axi_kernel_ARPROT[2:0],m_axi_kernel_ARQOS[3:0],m_axi_kernel_ARVALID,m_axi_kernel_ARREADY,m_axi_kernel_RID[0:0],m_axi_kernel_RDATA[31:0],m_axi_kernel_RRESP[1:0],m_axi_kernel_RLAST,m_axi_kernel_RVALID,m_axi_kernel_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "LinearImageFilter,Vivado 2023.2.2";
begin
end;
