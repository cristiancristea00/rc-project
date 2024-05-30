set moduleName LinearImageFilter_Pipeline_ker_rows_ker_cols
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {LinearImageFilter_Pipeline_ker_rows_ker_cols}
set C_modelType { void 0 }
set C_modelArgList {
	{ kernel int 32 regular {axi_master 0}  }
	{ image_in int 32 regular {axi_master 0}  }
	{ mul_ln7 int 64 regular  }
	{ padding int 8 regular  }
	{ kernel_dim int 32 regular  }
	{ add int 32 regular  }
	{ rows int 32 regular  }
	{ newRow_4 int 30 regular  }
	{ col int 32 regular  }
	{ empty_26 int 31 regular  }
	{ cols int 32 regular  }
	{ empty int 30 regular  }
	{ image_in_offset int 32 regular  }
	{ kernel_offset int 32 regular  }
	{ newCol_2 int 30 regular  }
	{ mul_i int 30 regular  }
	{ mul35_i int 30 regular  }
	{ sum_1_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "kernel", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "kernel_offset","offset": { "type": "dynamic","port_name": "kernel_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "image_in", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "image_in_offset","offset": { "type": "dynamic","port_name": "image_in_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "mul_ln7", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "padding", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_dim", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "newRow_4", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_26", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "image_in_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "newCol_2", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "mul_i", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "mul35_i", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "sum_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 119
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_kernel_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_kernel_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_kernel_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_kernel_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_kernel_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_kernel_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_kernel_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_kernel_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_kernel_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_kernel_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_kernel_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_kernel_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_kernel_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_kernel_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_kernel_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_kernel_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_kernel_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_kernel_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_kernel_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_kernel_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_kernel_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_kernel_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_kernel_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_kernel_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_kernel_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_kernel_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_kernel_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_kernel_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_kernel_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_kernel_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_kernel_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_kernel_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_kernel_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_kernel_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_kernel_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_kernel_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_kernel_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_kernel_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_kernel_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_kernel_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_kernel_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_kernel_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_kernel_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_kernel_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_kernel_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_kernel_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_image_in_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_image_in_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_image_in_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_image_in_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_image_in_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_image_in_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_image_in_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_image_in_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_image_in_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_image_in_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_image_in_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_image_in_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_image_in_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_image_in_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_image_in_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_image_in_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_image_in_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_image_in_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_image_in_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_image_in_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_image_in_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_image_in_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_image_in_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_image_in_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_image_in_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_image_in_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_image_in_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_image_in_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_image_in_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_image_in_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_image_in_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_image_in_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_image_in_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_image_in_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_image_in_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_image_in_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_image_in_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_image_in_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_image_in_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_image_in_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_image_in_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_image_in_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_image_in_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_image_in_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_image_in_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_image_in_BUSER sc_in sc_lv 1 signal 1 } 
	{ mul_ln7 sc_in sc_lv 64 signal 2 } 
	{ padding sc_in sc_lv 8 signal 3 } 
	{ kernel_dim sc_in sc_lv 32 signal 4 } 
	{ add sc_in sc_lv 32 signal 5 } 
	{ rows sc_in sc_lv 32 signal 6 } 
	{ newRow_4 sc_in sc_lv 30 signal 7 } 
	{ col sc_in sc_lv 32 signal 8 } 
	{ empty_26 sc_in sc_lv 31 signal 9 } 
	{ cols sc_in sc_lv 32 signal 10 } 
	{ empty sc_in sc_lv 30 signal 11 } 
	{ image_in_offset sc_in sc_lv 32 signal 12 } 
	{ kernel_offset sc_in sc_lv 32 signal 13 } 
	{ newCol_2 sc_in sc_lv 30 signal 14 } 
	{ mul_i sc_in sc_lv 30 signal 15 } 
	{ mul35_i sc_in sc_lv 30 signal 16 } 
	{ sum_1_out sc_out sc_lv 32 signal 17 } 
	{ sum_1_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ grp_fu_239_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_239_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_239_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_239_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_kernel_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "AWVALID" }} , 
 	{ "name": "m_axi_kernel_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "AWREADY" }} , 
 	{ "name": "m_axi_kernel_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel", "role": "AWADDR" }} , 
 	{ "name": "m_axi_kernel_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "AWID" }} , 
 	{ "name": "m_axi_kernel_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel", "role": "AWLEN" }} , 
 	{ "name": "m_axi_kernel_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kernel", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_kernel_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "kernel", "role": "AWBURST" }} , 
 	{ "name": "m_axi_kernel_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "kernel", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_kernel_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_kernel_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kernel", "role": "AWPROT" }} , 
 	{ "name": "m_axi_kernel_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel", "role": "AWQOS" }} , 
 	{ "name": "m_axi_kernel_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel", "role": "AWREGION" }} , 
 	{ "name": "m_axi_kernel_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "AWUSER" }} , 
 	{ "name": "m_axi_kernel_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "WVALID" }} , 
 	{ "name": "m_axi_kernel_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "WREADY" }} , 
 	{ "name": "m_axi_kernel_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel", "role": "WDATA" }} , 
 	{ "name": "m_axi_kernel_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel", "role": "WSTRB" }} , 
 	{ "name": "m_axi_kernel_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "WLAST" }} , 
 	{ "name": "m_axi_kernel_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "WID" }} , 
 	{ "name": "m_axi_kernel_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "WUSER" }} , 
 	{ "name": "m_axi_kernel_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "ARVALID" }} , 
 	{ "name": "m_axi_kernel_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "ARREADY" }} , 
 	{ "name": "m_axi_kernel_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel", "role": "ARADDR" }} , 
 	{ "name": "m_axi_kernel_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "ARID" }} , 
 	{ "name": "m_axi_kernel_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel", "role": "ARLEN" }} , 
 	{ "name": "m_axi_kernel_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kernel", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_kernel_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "kernel", "role": "ARBURST" }} , 
 	{ "name": "m_axi_kernel_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "kernel", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_kernel_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_kernel_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kernel", "role": "ARPROT" }} , 
 	{ "name": "m_axi_kernel_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel", "role": "ARQOS" }} , 
 	{ "name": "m_axi_kernel_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel", "role": "ARREGION" }} , 
 	{ "name": "m_axi_kernel_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "ARUSER" }} , 
 	{ "name": "m_axi_kernel_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "RVALID" }} , 
 	{ "name": "m_axi_kernel_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "RREADY" }} , 
 	{ "name": "m_axi_kernel_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel", "role": "RDATA" }} , 
 	{ "name": "m_axi_kernel_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "RLAST" }} , 
 	{ "name": "m_axi_kernel_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "RID" }} , 
 	{ "name": "m_axi_kernel_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "kernel", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_kernel_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "RUSER" }} , 
 	{ "name": "m_axi_kernel_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "kernel", "role": "RRESP" }} , 
 	{ "name": "m_axi_kernel_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "BVALID" }} , 
 	{ "name": "m_axi_kernel_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "BREADY" }} , 
 	{ "name": "m_axi_kernel_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "kernel", "role": "BRESP" }} , 
 	{ "name": "m_axi_kernel_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "BID" }} , 
 	{ "name": "m_axi_kernel_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "BUSER" }} , 
 	{ "name": "m_axi_image_in_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "AWVALID" }} , 
 	{ "name": "m_axi_image_in_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "AWREADY" }} , 
 	{ "name": "m_axi_image_in_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_in", "role": "AWADDR" }} , 
 	{ "name": "m_axi_image_in_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "AWID" }} , 
 	{ "name": "m_axi_image_in_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_in", "role": "AWLEN" }} , 
 	{ "name": "m_axi_image_in_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "image_in", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_image_in_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "image_in", "role": "AWBURST" }} , 
 	{ "name": "m_axi_image_in_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "image_in", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_image_in_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "image_in", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_image_in_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "image_in", "role": "AWPROT" }} , 
 	{ "name": "m_axi_image_in_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "image_in", "role": "AWQOS" }} , 
 	{ "name": "m_axi_image_in_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "image_in", "role": "AWREGION" }} , 
 	{ "name": "m_axi_image_in_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "AWUSER" }} , 
 	{ "name": "m_axi_image_in_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "WVALID" }} , 
 	{ "name": "m_axi_image_in_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "WREADY" }} , 
 	{ "name": "m_axi_image_in_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_in", "role": "WDATA" }} , 
 	{ "name": "m_axi_image_in_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "image_in", "role": "WSTRB" }} , 
 	{ "name": "m_axi_image_in_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "WLAST" }} , 
 	{ "name": "m_axi_image_in_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "WID" }} , 
 	{ "name": "m_axi_image_in_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "WUSER" }} , 
 	{ "name": "m_axi_image_in_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "ARVALID" }} , 
 	{ "name": "m_axi_image_in_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "ARREADY" }} , 
 	{ "name": "m_axi_image_in_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_in", "role": "ARADDR" }} , 
 	{ "name": "m_axi_image_in_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "ARID" }} , 
 	{ "name": "m_axi_image_in_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_in", "role": "ARLEN" }} , 
 	{ "name": "m_axi_image_in_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "image_in", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_image_in_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "image_in", "role": "ARBURST" }} , 
 	{ "name": "m_axi_image_in_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "image_in", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_image_in_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "image_in", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_image_in_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "image_in", "role": "ARPROT" }} , 
 	{ "name": "m_axi_image_in_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "image_in", "role": "ARQOS" }} , 
 	{ "name": "m_axi_image_in_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "image_in", "role": "ARREGION" }} , 
 	{ "name": "m_axi_image_in_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "ARUSER" }} , 
 	{ "name": "m_axi_image_in_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "RVALID" }} , 
 	{ "name": "m_axi_image_in_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "RREADY" }} , 
 	{ "name": "m_axi_image_in_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_in", "role": "RDATA" }} , 
 	{ "name": "m_axi_image_in_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "RLAST" }} , 
 	{ "name": "m_axi_image_in_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "RID" }} , 
 	{ "name": "m_axi_image_in_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "image_in", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_image_in_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "RUSER" }} , 
 	{ "name": "m_axi_image_in_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "image_in", "role": "RRESP" }} , 
 	{ "name": "m_axi_image_in_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "BVALID" }} , 
 	{ "name": "m_axi_image_in_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "BREADY" }} , 
 	{ "name": "m_axi_image_in_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "image_in", "role": "BRESP" }} , 
 	{ "name": "m_axi_image_in_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "BID" }} , 
 	{ "name": "m_axi_image_in_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "BUSER" }} , 
 	{ "name": "mul_ln7", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mul_ln7", "role": "default" }} , 
 	{ "name": "padding", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "padding", "role": "default" }} , 
 	{ "name": "kernel_dim", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_dim", "role": "default" }} , 
 	{ "name": "add", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add", "role": "default" }} , 
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "newRow_4", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "newRow_4", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col", "role": "default" }} , 
 	{ "name": "empty_26", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "empty_26", "role": "default" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "image_in_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_in_offset", "role": "default" }} , 
 	{ "name": "kernel_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_offset", "role": "default" }} , 
 	{ "name": "newCol_2", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "newCol_2", "role": "default" }} , 
 	{ "name": "mul_i", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "mul_i", "role": "default" }} , 
 	{ "name": "mul35_i", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "mul35_i", "role": "default" }} , 
 	{ "name": "sum_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_1_out", "role": "default" }} , 
 	{ "name": "sum_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_1_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_239_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_239_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_239_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_239_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_239_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_239_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_239_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_239_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "LinearImageFilter_Pipeline_ker_rows_ker_cols",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "kernel", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "kernel_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "kernel_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "image_in", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "image_in_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "image_in_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "mul_ln7", "Type" : "None", "Direction" : "I"},
			{"Name" : "padding", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_dim", "Type" : "None", "Direction" : "I"},
			{"Name" : "add", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "newRow_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "newCol_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul35_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ker_rows_ker_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_30s_30s_30_2_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	LinearImageFilter_Pipeline_ker_rows_ker_cols {
		kernel {Type I LastRead 13 FirstWrite -1}
		image_in {Type I LastRead 16 FirstWrite -1}
		mul_ln7 {Type I LastRead 0 FirstWrite -1}
		padding {Type I LastRead 0 FirstWrite -1}
		kernel_dim {Type I LastRead 0 FirstWrite -1}
		add {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		newRow_4 {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}
		empty_26 {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		image_in_offset {Type I LastRead 0 FirstWrite -1}
		kernel_offset {Type I LastRead 0 FirstWrite -1}
		newCol_2 {Type I LastRead 0 FirstWrite -1}
		mul_i {Type I LastRead 0 FirstWrite -1}
		mul35_i {Type I LastRead 0 FirstWrite -1}
		sum_1_out {Type O LastRead -1 FirstWrite 21}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_kernel_AWVALID VALID 1 1 }  { m_axi_kernel_AWREADY READY 0 1 }  { m_axi_kernel_AWADDR ADDR 1 32 }  { m_axi_kernel_AWID ID 1 1 }  { m_axi_kernel_AWLEN SIZE 1 32 }  { m_axi_kernel_AWSIZE BURST 1 3 }  { m_axi_kernel_AWBURST LOCK 1 2 }  { m_axi_kernel_AWLOCK CACHE 1 2 }  { m_axi_kernel_AWCACHE PROT 1 4 }  { m_axi_kernel_AWPROT QOS 1 3 }  { m_axi_kernel_AWQOS REGION 1 4 }  { m_axi_kernel_AWREGION USER 1 4 }  { m_axi_kernel_AWUSER DATA 1 1 }  { m_axi_kernel_WVALID VALID 1 1 }  { m_axi_kernel_WREADY READY 0 1 }  { m_axi_kernel_WDATA FIFONUM 1 32 }  { m_axi_kernel_WSTRB STRB 1 4 }  { m_axi_kernel_WLAST LAST 1 1 }  { m_axi_kernel_WID ID 1 1 }  { m_axi_kernel_WUSER DATA 1 1 }  { m_axi_kernel_ARVALID VALID 1 1 }  { m_axi_kernel_ARREADY READY 0 1 }  { m_axi_kernel_ARADDR ADDR 1 32 }  { m_axi_kernel_ARID ID 1 1 }  { m_axi_kernel_ARLEN SIZE 1 32 }  { m_axi_kernel_ARSIZE BURST 1 3 }  { m_axi_kernel_ARBURST LOCK 1 2 }  { m_axi_kernel_ARLOCK CACHE 1 2 }  { m_axi_kernel_ARCACHE PROT 1 4 }  { m_axi_kernel_ARPROT QOS 1 3 }  { m_axi_kernel_ARQOS REGION 1 4 }  { m_axi_kernel_ARREGION USER 1 4 }  { m_axi_kernel_ARUSER DATA 1 1 }  { m_axi_kernel_RVALID VALID 0 1 }  { m_axi_kernel_RREADY READY 1 1 }  { m_axi_kernel_RDATA FIFONUM 0 32 }  { m_axi_kernel_RLAST LAST 0 1 }  { m_axi_kernel_RID ID 0 1 }  { m_axi_kernel_RFIFONUM LEN 0 9 }  { m_axi_kernel_RUSER DATA 0 1 }  { m_axi_kernel_RRESP RESP 0 2 }  { m_axi_kernel_BVALID VALID 0 1 }  { m_axi_kernel_BREADY READY 1 1 }  { m_axi_kernel_BRESP RESP 0 2 }  { m_axi_kernel_BID ID 0 1 }  { m_axi_kernel_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_image_in_AWVALID VALID 1 1 }  { m_axi_image_in_AWREADY READY 0 1 }  { m_axi_image_in_AWADDR ADDR 1 32 }  { m_axi_image_in_AWID ID 1 1 }  { m_axi_image_in_AWLEN SIZE 1 32 }  { m_axi_image_in_AWSIZE BURST 1 3 }  { m_axi_image_in_AWBURST LOCK 1 2 }  { m_axi_image_in_AWLOCK CACHE 1 2 }  { m_axi_image_in_AWCACHE PROT 1 4 }  { m_axi_image_in_AWPROT QOS 1 3 }  { m_axi_image_in_AWQOS REGION 1 4 }  { m_axi_image_in_AWREGION USER 1 4 }  { m_axi_image_in_AWUSER DATA 1 1 }  { m_axi_image_in_WVALID VALID 1 1 }  { m_axi_image_in_WREADY READY 0 1 }  { m_axi_image_in_WDATA FIFONUM 1 32 }  { m_axi_image_in_WSTRB STRB 1 4 }  { m_axi_image_in_WLAST LAST 1 1 }  { m_axi_image_in_WID ID 1 1 }  { m_axi_image_in_WUSER DATA 1 1 }  { m_axi_image_in_ARVALID VALID 1 1 }  { m_axi_image_in_ARREADY READY 0 1 }  { m_axi_image_in_ARADDR ADDR 1 32 }  { m_axi_image_in_ARID ID 1 1 }  { m_axi_image_in_ARLEN SIZE 1 32 }  { m_axi_image_in_ARSIZE BURST 1 3 }  { m_axi_image_in_ARBURST LOCK 1 2 }  { m_axi_image_in_ARLOCK CACHE 1 2 }  { m_axi_image_in_ARCACHE PROT 1 4 }  { m_axi_image_in_ARPROT QOS 1 3 }  { m_axi_image_in_ARQOS REGION 1 4 }  { m_axi_image_in_ARREGION USER 1 4 }  { m_axi_image_in_ARUSER DATA 1 1 }  { m_axi_image_in_RVALID VALID 0 1 }  { m_axi_image_in_RREADY READY 1 1 }  { m_axi_image_in_RDATA FIFONUM 0 32 }  { m_axi_image_in_RLAST LAST 0 1 }  { m_axi_image_in_RID ID 0 1 }  { m_axi_image_in_RFIFONUM LEN 0 9 }  { m_axi_image_in_RUSER DATA 0 1 }  { m_axi_image_in_RRESP RESP 0 2 }  { m_axi_image_in_BVALID VALID 0 1 }  { m_axi_image_in_BREADY READY 1 1 }  { m_axi_image_in_BRESP RESP 0 2 }  { m_axi_image_in_BID ID 0 1 }  { m_axi_image_in_BUSER DATA 0 1 } } }
	mul_ln7 { ap_none {  { mul_ln7 in_data 0 64 } } }
	padding { ap_none {  { padding in_data 0 8 } } }
	kernel_dim { ap_none {  { kernel_dim in_data 0 32 } } }
	add { ap_none {  { add in_data 0 32 } } }
	rows { ap_none {  { rows in_data 0 32 } } }
	newRow_4 { ap_none {  { newRow_4 in_data 0 30 } } }
	col { ap_none {  { col in_data 0 32 } } }
	empty_26 { ap_none {  { empty_26 in_data 0 31 } } }
	cols { ap_none {  { cols in_data 0 32 } } }
	empty { ap_none {  { empty in_data 0 30 } } }
	image_in_offset { ap_none {  { image_in_offset in_data 0 32 } } }
	kernel_offset { ap_none {  { kernel_offset in_data 0 32 } } }
	newCol_2 { ap_none {  { newCol_2 in_data 0 30 } } }
	mul_i { ap_none {  { mul_i in_data 0 30 } } }
	mul35_i { ap_none {  { mul35_i in_data 0 30 } } }
	sum_1_out { ap_vld {  { sum_1_out out_data 1 32 }  { sum_1_out_ap_vld out_vld 1 1 } } }
}
