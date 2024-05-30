set moduleName LinearImageFilter
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {LinearImageFilter}
set C_modelType { void 0 }
set C_modelArgList {
	{ image_out int 32 regular {axi_master 1}  }
	{ image_in int 32 regular {axi_master 0}  }
	{ kernel int 32 regular {axi_master 0}  }
	{ image_out_offset int 32 regular {axi_slave 0}  }
	{ image_in_offset int 32 regular {axi_slave 0}  }
	{ rows int 32 regular {axi_slave 0}  }
	{ cols int 32 regular {axi_slave 0}  }
	{ kernel_offset int 32 regular {axi_slave 0}  }
	{ kernel_dim int 32 regular {axi_slave 0}  }
	{ stride_row int 32 regular {axi_slave 0}  }
	{ stride_col int 32 regular {axi_slave 0}  }
	{ padding uint 8 regular {axi_slave 0}  }
}
set hasAXIMCache 1
set AXIMCacheInstList { image_in_m_axi_U kernel_m_axi_U }
set C_modelArgMapList {[ 
	{ "Name" : "image_out", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "image_out_offset","offset": { "type": "dynamic","port_name": "image_out_offset"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "image_in", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "image_in_offset","offset": { "type": "dynamic","port_name": "image_in_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "kernel", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "kernel_offset","offset": { "type": "dynamic","port_name": "kernel_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "image_out_offset", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "image_in_offset", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "rows", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "cols", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "kernel_offset", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "kernel_dim", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "stride_row", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "stride_col", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "padding", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":87}} ]}
# RTL Port declarations: 
set portNum 155
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_image_out_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_image_out_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_image_out_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_image_out_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_image_out_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_image_out_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_image_out_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_image_out_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_image_out_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_image_out_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_image_out_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_image_out_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_image_out_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_image_out_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_image_out_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_image_out_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_image_out_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_image_out_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_image_out_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_image_out_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_image_out_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_image_out_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_image_out_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_image_out_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_image_out_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_image_out_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_image_out_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_image_out_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_image_out_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_image_out_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_image_out_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_image_out_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_image_out_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_image_out_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_image_out_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_image_out_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_image_out_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_image_out_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_image_out_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_image_out_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_image_out_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_image_out_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_image_out_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_image_out_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_image_out_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_image_in_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_image_in_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_image_in_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_image_in_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_image_in_AWLEN sc_out sc_lv 8 signal 1 } 
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
	{ m_axi_image_in_WDATA sc_out sc_lv 1024 signal 1 } 
	{ m_axi_image_in_WSTRB sc_out sc_lv 128 signal 1 } 
	{ m_axi_image_in_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_image_in_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_image_in_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_image_in_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_image_in_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_image_in_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_image_in_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_image_in_ARLEN sc_out sc_lv 8 signal 1 } 
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
	{ m_axi_image_in_RDATA sc_in sc_lv 1024 signal 1 } 
	{ m_axi_image_in_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_image_in_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_image_in_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_image_in_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_image_in_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_image_in_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_image_in_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_image_in_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_image_in_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_kernel_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_kernel_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_kernel_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_kernel_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_kernel_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_kernel_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_kernel_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_kernel_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_kernel_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_kernel_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_kernel_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_kernel_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_kernel_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_kernel_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_kernel_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_kernel_WDATA sc_out sc_lv 1024 signal 2 } 
	{ m_axi_kernel_WSTRB sc_out sc_lv 128 signal 2 } 
	{ m_axi_kernel_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_kernel_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_kernel_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_kernel_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_kernel_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_kernel_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_kernel_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_kernel_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_kernel_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_kernel_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_kernel_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_kernel_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_kernel_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_kernel_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_kernel_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_kernel_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_kernel_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_kernel_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_kernel_RDATA sc_in sc_lv 1024 signal 2 } 
	{ m_axi_kernel_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_kernel_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_kernel_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_kernel_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_kernel_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_kernel_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_kernel_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_kernel_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_kernel_BUSER sc_in sc_lv 1 signal 2 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"LinearImageFilter","role":"start","value":"0","valid_bit":"0"},{"name":"LinearImageFilter","role":"continue","value":"0","valid_bit":"4"},{"name":"LinearImageFilter","role":"auto_start","value":"0","valid_bit":"7"},{"name":"image_out_offset","role":"data","value":"16"},{"name":"image_in_offset","role":"data","value":"24"},{"name":"rows","role":"data","value":"32"},{"name":"cols","role":"data","value":"40"},{"name":"kernel_offset","role":"data","value":"48"},{"name":"kernel_dim","role":"data","value":"56"},{"name":"stride_row","role":"data","value":"64"},{"name":"stride_col","role":"data","value":"72"},{"name":"padding","role":"data","value":"80"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"LinearImageFilter","role":"start","value":"0","valid_bit":"0"},{"name":"LinearImageFilter","role":"done","value":"0","valid_bit":"1"},{"name":"LinearImageFilter","role":"idle","value":"0","valid_bit":"2"},{"name":"LinearImageFilter","role":"ready","value":"0","valid_bit":"3"},{"name":"LinearImageFilter","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_image_out_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "AWVALID" }} , 
 	{ "name": "m_axi_image_out_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "AWREADY" }} , 
 	{ "name": "m_axi_image_out_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_out", "role": "AWADDR" }} , 
 	{ "name": "m_axi_image_out_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "AWID" }} , 
 	{ "name": "m_axi_image_out_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_out", "role": "AWLEN" }} , 
 	{ "name": "m_axi_image_out_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "image_out", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_image_out_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "image_out", "role": "AWBURST" }} , 
 	{ "name": "m_axi_image_out_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "image_out", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_image_out_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "image_out", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_image_out_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "image_out", "role": "AWPROT" }} , 
 	{ "name": "m_axi_image_out_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "image_out", "role": "AWQOS" }} , 
 	{ "name": "m_axi_image_out_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "image_out", "role": "AWREGION" }} , 
 	{ "name": "m_axi_image_out_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "AWUSER" }} , 
 	{ "name": "m_axi_image_out_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "WVALID" }} , 
 	{ "name": "m_axi_image_out_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "WREADY" }} , 
 	{ "name": "m_axi_image_out_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_out", "role": "WDATA" }} , 
 	{ "name": "m_axi_image_out_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "image_out", "role": "WSTRB" }} , 
 	{ "name": "m_axi_image_out_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "WLAST" }} , 
 	{ "name": "m_axi_image_out_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "WID" }} , 
 	{ "name": "m_axi_image_out_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "WUSER" }} , 
 	{ "name": "m_axi_image_out_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "ARVALID" }} , 
 	{ "name": "m_axi_image_out_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "ARREADY" }} , 
 	{ "name": "m_axi_image_out_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_out", "role": "ARADDR" }} , 
 	{ "name": "m_axi_image_out_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "ARID" }} , 
 	{ "name": "m_axi_image_out_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_out", "role": "ARLEN" }} , 
 	{ "name": "m_axi_image_out_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "image_out", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_image_out_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "image_out", "role": "ARBURST" }} , 
 	{ "name": "m_axi_image_out_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "image_out", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_image_out_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "image_out", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_image_out_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "image_out", "role": "ARPROT" }} , 
 	{ "name": "m_axi_image_out_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "image_out", "role": "ARQOS" }} , 
 	{ "name": "m_axi_image_out_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "image_out", "role": "ARREGION" }} , 
 	{ "name": "m_axi_image_out_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "ARUSER" }} , 
 	{ "name": "m_axi_image_out_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "RVALID" }} , 
 	{ "name": "m_axi_image_out_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "RREADY" }} , 
 	{ "name": "m_axi_image_out_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_out", "role": "RDATA" }} , 
 	{ "name": "m_axi_image_out_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "RLAST" }} , 
 	{ "name": "m_axi_image_out_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "RID" }} , 
 	{ "name": "m_axi_image_out_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "RUSER" }} , 
 	{ "name": "m_axi_image_out_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "image_out", "role": "RRESP" }} , 
 	{ "name": "m_axi_image_out_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "BVALID" }} , 
 	{ "name": "m_axi_image_out_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "BREADY" }} , 
 	{ "name": "m_axi_image_out_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "image_out", "role": "BRESP" }} , 
 	{ "name": "m_axi_image_out_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "BID" }} , 
 	{ "name": "m_axi_image_out_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "BUSER" }} , 
 	{ "name": "m_axi_image_in_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "AWVALID" }} , 
 	{ "name": "m_axi_image_in_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "AWREADY" }} , 
 	{ "name": "m_axi_image_in_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_in", "role": "AWADDR" }} , 
 	{ "name": "m_axi_image_in_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "AWID" }} , 
 	{ "name": "m_axi_image_in_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_in", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_image_in_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "image_in", "role": "WDATA" }} , 
 	{ "name": "m_axi_image_in_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "image_in", "role": "WSTRB" }} , 
 	{ "name": "m_axi_image_in_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "WLAST" }} , 
 	{ "name": "m_axi_image_in_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "WID" }} , 
 	{ "name": "m_axi_image_in_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "WUSER" }} , 
 	{ "name": "m_axi_image_in_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "ARVALID" }} , 
 	{ "name": "m_axi_image_in_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "ARREADY" }} , 
 	{ "name": "m_axi_image_in_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_in", "role": "ARADDR" }} , 
 	{ "name": "m_axi_image_in_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "ARID" }} , 
 	{ "name": "m_axi_image_in_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_in", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_image_in_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "image_in", "role": "RDATA" }} , 
 	{ "name": "m_axi_image_in_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "RLAST" }} , 
 	{ "name": "m_axi_image_in_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "RID" }} , 
 	{ "name": "m_axi_image_in_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "RUSER" }} , 
 	{ "name": "m_axi_image_in_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "image_in", "role": "RRESP" }} , 
 	{ "name": "m_axi_image_in_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "BVALID" }} , 
 	{ "name": "m_axi_image_in_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "BREADY" }} , 
 	{ "name": "m_axi_image_in_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "image_in", "role": "BRESP" }} , 
 	{ "name": "m_axi_image_in_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "BID" }} , 
 	{ "name": "m_axi_image_in_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "BUSER" }} , 
 	{ "name": "m_axi_kernel_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "AWVALID" }} , 
 	{ "name": "m_axi_kernel_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "AWREADY" }} , 
 	{ "name": "m_axi_kernel_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel", "role": "AWADDR" }} , 
 	{ "name": "m_axi_kernel_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "AWID" }} , 
 	{ "name": "m_axi_kernel_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "kernel", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_kernel_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "kernel", "role": "WDATA" }} , 
 	{ "name": "m_axi_kernel_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "kernel", "role": "WSTRB" }} , 
 	{ "name": "m_axi_kernel_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "WLAST" }} , 
 	{ "name": "m_axi_kernel_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "WID" }} , 
 	{ "name": "m_axi_kernel_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "WUSER" }} , 
 	{ "name": "m_axi_kernel_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "ARVALID" }} , 
 	{ "name": "m_axi_kernel_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "ARREADY" }} , 
 	{ "name": "m_axi_kernel_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel", "role": "ARADDR" }} , 
 	{ "name": "m_axi_kernel_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "ARID" }} , 
 	{ "name": "m_axi_kernel_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "kernel", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_kernel_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "kernel", "role": "RDATA" }} , 
 	{ "name": "m_axi_kernel_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "RLAST" }} , 
 	{ "name": "m_axi_kernel_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "RID" }} , 
 	{ "name": "m_axi_kernel_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "RUSER" }} , 
 	{ "name": "m_axi_kernel_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "kernel", "role": "RRESP" }} , 
 	{ "name": "m_axi_kernel_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "BVALID" }} , 
 	{ "name": "m_axi_kernel_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "BREADY" }} , 
 	{ "name": "m_axi_kernel_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "kernel", "role": "BRESP" }} , 
 	{ "name": "m_axi_kernel_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "BID" }} , 
 	{ "name": "m_axi_kernel_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "7", "9", "11", "13", "15", "17", "19", "21", "23", "25", "27", "29", "31", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59"],
		"CDFG" : "LinearImageFilter",
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
			{"Name" : "image_out", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "image_out_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "image_out_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "image_out_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "image_in", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols5_fu_671", "Port" : "image_in", "Inst_start_state" : "222", "Inst_end_state" : "223"},
					{"ID" : "7", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols3_fu_623", "Port" : "image_in", "Inst_start_state" : "136", "Inst_end_state" : "137"},
					{"ID" : "9", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols4_fu_647", "Port" : "image_in", "Inst_start_state" : "215", "Inst_end_state" : "216"},
					{"ID" : "27", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols13_fu_863", "Port" : "image_in", "Inst_start_state" : "566", "Inst_end_state" : "567"},
					{"ID" : "5", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols2_fu_599", "Port" : "image_in", "Inst_start_state" : "93", "Inst_end_state" : "94"},
					{"ID" : "1", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols_fu_550", "Port" : "image_in", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "31", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols15_fu_911", "Port" : "image_in", "Inst_start_state" : "652", "Inst_end_state" : "653"},
					{"ID" : "25", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols12_fu_839", "Port" : "image_in", "Inst_start_state" : "523", "Inst_end_state" : "524"},
					{"ID" : "19", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols9_fu_767", "Port" : "image_in", "Inst_start_state" : "394", "Inst_end_state" : "395"},
					{"ID" : "21", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols10_fu_791", "Port" : "image_in", "Inst_start_state" : "473", "Inst_end_state" : "474"},
					{"ID" : "23", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols11_fu_815", "Port" : "image_in", "Inst_start_state" : "480", "Inst_end_state" : "481"},
					{"ID" : "29", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols14_fu_887", "Port" : "image_in", "Inst_start_state" : "645", "Inst_end_state" : "646"},
					{"ID" : "13", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols6_fu_695", "Port" : "image_in", "Inst_start_state" : "265", "Inst_end_state" : "266"},
					{"ID" : "3", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols1_fu_575", "Port" : "image_in", "Inst_start_state" : "50", "Inst_end_state" : "51"},
					{"ID" : "17", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols8_fu_743", "Port" : "image_in", "Inst_start_state" : "351", "Inst_end_state" : "352"},
					{"ID" : "15", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols7_fu_719", "Port" : "image_in", "Inst_start_state" : "308", "Inst_end_state" : "309"}]},
			{"Name" : "kernel", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols5_fu_671", "Port" : "kernel", "Inst_start_state" : "222", "Inst_end_state" : "223"},
					{"ID" : "7", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols3_fu_623", "Port" : "kernel", "Inst_start_state" : "136", "Inst_end_state" : "137"},
					{"ID" : "9", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols4_fu_647", "Port" : "kernel", "Inst_start_state" : "215", "Inst_end_state" : "216"},
					{"ID" : "27", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols13_fu_863", "Port" : "kernel", "Inst_start_state" : "566", "Inst_end_state" : "567"},
					{"ID" : "5", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols2_fu_599", "Port" : "kernel", "Inst_start_state" : "93", "Inst_end_state" : "94"},
					{"ID" : "1", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols_fu_550", "Port" : "kernel", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "31", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols15_fu_911", "Port" : "kernel", "Inst_start_state" : "652", "Inst_end_state" : "653"},
					{"ID" : "25", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols12_fu_839", "Port" : "kernel", "Inst_start_state" : "523", "Inst_end_state" : "524"},
					{"ID" : "19", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols9_fu_767", "Port" : "kernel", "Inst_start_state" : "394", "Inst_end_state" : "395"},
					{"ID" : "21", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols10_fu_791", "Port" : "kernel", "Inst_start_state" : "473", "Inst_end_state" : "474"},
					{"ID" : "23", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols11_fu_815", "Port" : "kernel", "Inst_start_state" : "480", "Inst_end_state" : "481"},
					{"ID" : "29", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols14_fu_887", "Port" : "kernel", "Inst_start_state" : "645", "Inst_end_state" : "646"},
					{"ID" : "13", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols6_fu_695", "Port" : "kernel", "Inst_start_state" : "265", "Inst_end_state" : "266"},
					{"ID" : "3", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols1_fu_575", "Port" : "kernel", "Inst_start_state" : "50", "Inst_end_state" : "51"},
					{"ID" : "17", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols8_fu_743", "Port" : "kernel", "Inst_start_state" : "351", "Inst_end_state" : "352"},
					{"ID" : "15", "SubInstance" : "grp_LinearImageFilter_Pipeline_ker_rows_ker_cols7_fu_719", "Port" : "kernel", "Inst_start_state" : "308", "Inst_end_state" : "309"}]},
			{"Name" : "image_out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_dim", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride_row", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride_col", "Type" : "None", "Direction" : "I"},
			{"Name" : "padding", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "img_cols", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "696", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state695"], "QuitState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state50", "ap_ST_fsm_state93", "ap_ST_fsm_state136", "ap_ST_fsm_state179", "ap_ST_fsm_state222", "ap_ST_fsm_state265", "ap_ST_fsm_state308", "ap_ST_fsm_state351", "ap_ST_fsm_state394", "ap_ST_fsm_state437", "ap_ST_fsm_state480", "ap_ST_fsm_state523", "ap_ST_fsm_state566", "ap_ST_fsm_state609", "ap_ST_fsm_state652"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state696"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "img_rows", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "696", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state696"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols_fu_550", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "LinearImageFilter_Pipeline_ker_rows_ker_cols",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "627",
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
			{"Name" : "add_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "newRow_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_41", "Type" : "None", "Direction" : "I"},
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols_fu_550.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols1_fu_575", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "LinearImageFilter_Pipeline_ker_rows_ker_cols1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "627",
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
			{"Name" : "add_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "newRow_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul35_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "newCol_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ker_rows_ker_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols1_fu_575.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols2_fu_599", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "LinearImageFilter_Pipeline_ker_rows_ker_cols2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "627",
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
			{"Name" : "add_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "newRow_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul35_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "newCol_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ker_rows_ker_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols2_fu_599.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols3_fu_623", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "LinearImageFilter_Pipeline_ker_rows_ker_cols3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "627",
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
			{"Name" : "add_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "newRow_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul35_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "newCol_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ker_rows_ker_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols3_fu_623.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols4_fu_647", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "LinearImageFilter_Pipeline_ker_rows_ker_cols4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "627",
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
			{"Name" : "add_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "newRow_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul35_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "newCol_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_12_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ker_rows_ker_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols4_fu_647.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols5_fu_671", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "LinearImageFilter_Pipeline_ker_rows_ker_cols5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "627",
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
			{"Name" : "add_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "newRow_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul35_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "newCol_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_15_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ker_rows_ker_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols5_fu_671.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols6_fu_695", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "LinearImageFilter_Pipeline_ker_rows_ker_cols6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "627",
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
			{"Name" : "add_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "newRow_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul35_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "newCol_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_18_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ker_rows_ker_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols6_fu_695.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols7_fu_719", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "LinearImageFilter_Pipeline_ker_rows_ker_cols7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "627",
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
			{"Name" : "add_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "newRow_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul35_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "newCol_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_21_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ker_rows_ker_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols7_fu_719.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols8_fu_743", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "LinearImageFilter_Pipeline_ker_rows_ker_cols8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "627",
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
			{"Name" : "add_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "newRow_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul35_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "newCol_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_24_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ker_rows_ker_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols8_fu_743.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols9_fu_767", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "LinearImageFilter_Pipeline_ker_rows_ker_cols9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "627",
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
			{"Name" : "add_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "newRow_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul35_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "newCol_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_27_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ker_rows_ker_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols9_fu_767.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols10_fu_791", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "LinearImageFilter_Pipeline_ker_rows_ker_cols10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "627",
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
			{"Name" : "add_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "newRow_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul35_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "newCol_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_30_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ker_rows_ker_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols10_fu_791.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols11_fu_815", "Parent" : "0", "Child" : ["24"],
		"CDFG" : "LinearImageFilter_Pipeline_ker_rows_ker_cols11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "627",
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
			{"Name" : "add_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "newRow_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul35_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "newCol_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ker_rows_ker_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols11_fu_815.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols12_fu_839", "Parent" : "0", "Child" : ["26"],
		"CDFG" : "LinearImageFilter_Pipeline_ker_rows_ker_cols12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "627",
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
			{"Name" : "add_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "newRow_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul35_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "newCol_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_36_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ker_rows_ker_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols12_fu_839.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols13_fu_863", "Parent" : "0", "Child" : ["28"],
		"CDFG" : "LinearImageFilter_Pipeline_ker_rows_ker_cols13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "627",
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
			{"Name" : "add_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "newRow_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul35_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "newCol_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_39_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ker_rows_ker_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols13_fu_863.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols14_fu_887", "Parent" : "0", "Child" : ["30"],
		"CDFG" : "LinearImageFilter_Pipeline_ker_rows_ker_cols14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "627",
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
			{"Name" : "add_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "newRow_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul35_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "newCol_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_42_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ker_rows_ker_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols14_fu_887.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols15_fu_911", "Parent" : "0", "Child" : ["32"],
		"CDFG" : "LinearImageFilter_Pipeline_ker_rows_ker_cols15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "627",
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
			{"Name" : "add_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "newRow_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "col_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul35_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "newCol_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_45_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ker_rows_ker_cols", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LinearImageFilter_Pipeline_ker_rows_ker_cols15_fu_911.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_in_m_axi_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_out_m_axi_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_m_axi_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_2_1_U353", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U354", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32ns_32ns_32_36_seq_1_U355", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32ns_32ns_32_36_seq_1_U356", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32ns_32ns_30_36_seq_1_U357", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32ns_32ns_30_36_seq_1_U358", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32ns_32ns_30_36_seq_1_U359", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32ns_32ns_30_36_seq_1_U360", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32ns_32ns_30_36_seq_1_U361", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32ns_32ns_30_36_seq_1_U362", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32ns_32ns_30_36_seq_1_U363", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32ns_32ns_30_36_seq_1_U364", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32ns_32ns_30_36_seq_1_U365", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32ns_32ns_30_36_seq_1_U366", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32ns_32ns_30_36_seq_1_U367", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32ns_32ns_30_36_seq_1_U368", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32ns_32ns_30_36_seq_1_U369", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32ns_32ns_30_36_seq_1_U370", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32ns_32ns_30_36_seq_1_U371", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32ns_32ns_30_36_seq_1_U372", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U373", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U374", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_30s_30s_30_2_1_U375", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	LinearImageFilter {
		image_out {Type O LastRead 690 FirstWrite 44}
		image_in {Type I LastRead 16 FirstWrite -1}
		kernel {Type I LastRead 13 FirstWrite -1}
		image_out_offset {Type I LastRead 0 FirstWrite -1}
		image_in_offset {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		kernel_offset {Type I LastRead 0 FirstWrite -1}
		kernel_dim {Type I LastRead 0 FirstWrite -1}
		stride_row {Type I LastRead 0 FirstWrite -1}
		stride_col {Type I LastRead 0 FirstWrite -1}
		padding {Type I LastRead 0 FirstWrite -1}}
	LinearImageFilter_Pipeline_ker_rows_ker_cols {
		kernel {Type I LastRead 13 FirstWrite -1}
		image_in {Type I LastRead 16 FirstWrite -1}
		mul_ln7 {Type I LastRead 0 FirstWrite -1}
		padding {Type I LastRead 0 FirstWrite -1}
		kernel_dim {Type I LastRead 0 FirstWrite -1}
		add_0 {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		newRow_2 {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}
		empty_41 {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		image_in_offset {Type I LastRead 0 FirstWrite -1}
		kernel_offset {Type I LastRead 0 FirstWrite -1}
		newCol_2 {Type I LastRead 0 FirstWrite -1}
		mul_i {Type I LastRead 0 FirstWrite -1}
		mul35_i {Type I LastRead 0 FirstWrite -1}
		sum_1_out {Type O LastRead -1 FirstWrite 21}}
	LinearImageFilter_Pipeline_ker_rows_ker_cols1 {
		kernel {Type I LastRead 13 FirstWrite -1}
		image_in {Type I LastRead 16 FirstWrite -1}
		mul_ln7 {Type I LastRead 0 FirstWrite -1}
		padding {Type I LastRead 0 FirstWrite -1}
		kernel_dim {Type I LastRead 0 FirstWrite -1}
		add_0 {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		newRow_2 {Type I LastRead 0 FirstWrite -1}
		col_1 {Type I LastRead 0 FirstWrite -1}
		empty_40 {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		image_in_offset {Type I LastRead 0 FirstWrite -1}
		kernel_offset {Type I LastRead 0 FirstWrite -1}
		mul_i {Type I LastRead 0 FirstWrite -1}
		mul35_i {Type I LastRead 0 FirstWrite -1}
		newCol_2 {Type I LastRead 0 FirstWrite -1}
		sum_3_out {Type O LastRead -1 FirstWrite 21}}
	LinearImageFilter_Pipeline_ker_rows_ker_cols2 {
		kernel {Type I LastRead 13 FirstWrite -1}
		image_in {Type I LastRead 16 FirstWrite -1}
		mul_ln7 {Type I LastRead 0 FirstWrite -1}
		padding {Type I LastRead 0 FirstWrite -1}
		kernel_dim {Type I LastRead 0 FirstWrite -1}
		add_0 {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		newRow_2 {Type I LastRead 0 FirstWrite -1}
		col_2 {Type I LastRead 0 FirstWrite -1}
		empty_33 {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		image_in_offset {Type I LastRead 0 FirstWrite -1}
		kernel_offset {Type I LastRead 0 FirstWrite -1}
		mul_i {Type I LastRead 0 FirstWrite -1}
		mul35_i {Type I LastRead 0 FirstWrite -1}
		newCol_2 {Type I LastRead 0 FirstWrite -1}
		sum_6_out {Type O LastRead -1 FirstWrite 21}}
	LinearImageFilter_Pipeline_ker_rows_ker_cols3 {
		kernel {Type I LastRead 13 FirstWrite -1}
		image_in {Type I LastRead 16 FirstWrite -1}
		mul_ln7 {Type I LastRead 0 FirstWrite -1}
		padding {Type I LastRead 0 FirstWrite -1}
		kernel_dim {Type I LastRead 0 FirstWrite -1}
		add_0 {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		newRow_2 {Type I LastRead 0 FirstWrite -1}
		col_3 {Type I LastRead 0 FirstWrite -1}
		empty_32 {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		image_in_offset {Type I LastRead 0 FirstWrite -1}
		kernel_offset {Type I LastRead 0 FirstWrite -1}
		mul_i {Type I LastRead 0 FirstWrite -1}
		mul35_i {Type I LastRead 0 FirstWrite -1}
		newCol_2 {Type I LastRead 0 FirstWrite -1}
		sum_9_out {Type O LastRead -1 FirstWrite 21}}
	LinearImageFilter_Pipeline_ker_rows_ker_cols4 {
		kernel {Type I LastRead 13 FirstWrite -1}
		image_in {Type I LastRead 16 FirstWrite -1}
		mul_ln7 {Type I LastRead 0 FirstWrite -1}
		padding {Type I LastRead 0 FirstWrite -1}
		kernel_dim {Type I LastRead 0 FirstWrite -1}
		add_0 {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		newRow_2 {Type I LastRead 0 FirstWrite -1}
		col_4 {Type I LastRead 0 FirstWrite -1}
		empty_31 {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		image_in_offset {Type I LastRead 0 FirstWrite -1}
		kernel_offset {Type I LastRead 0 FirstWrite -1}
		mul_i {Type I LastRead 0 FirstWrite -1}
		mul35_i {Type I LastRead 0 FirstWrite -1}
		newCol_2 {Type I LastRead 0 FirstWrite -1}
		sum_12_out {Type O LastRead -1 FirstWrite 21}}
	LinearImageFilter_Pipeline_ker_rows_ker_cols5 {
		kernel {Type I LastRead 13 FirstWrite -1}
		image_in {Type I LastRead 16 FirstWrite -1}
		mul_ln7 {Type I LastRead 0 FirstWrite -1}
		padding {Type I LastRead 0 FirstWrite -1}
		kernel_dim {Type I LastRead 0 FirstWrite -1}
		add_0 {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		newRow_2 {Type I LastRead 0 FirstWrite -1}
		col_5 {Type I LastRead 0 FirstWrite -1}
		empty_30 {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		image_in_offset {Type I LastRead 0 FirstWrite -1}
		kernel_offset {Type I LastRead 0 FirstWrite -1}
		mul_i {Type I LastRead 0 FirstWrite -1}
		mul35_i {Type I LastRead 0 FirstWrite -1}
		newCol_2 {Type I LastRead 0 FirstWrite -1}
		sum_15_out {Type O LastRead -1 FirstWrite 21}}
	LinearImageFilter_Pipeline_ker_rows_ker_cols6 {
		kernel {Type I LastRead 13 FirstWrite -1}
		image_in {Type I LastRead 16 FirstWrite -1}
		mul_ln7 {Type I LastRead 0 FirstWrite -1}
		padding {Type I LastRead 0 FirstWrite -1}
		kernel_dim {Type I LastRead 0 FirstWrite -1}
		add_0 {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		newRow_2 {Type I LastRead 0 FirstWrite -1}
		col_6 {Type I LastRead 0 FirstWrite -1}
		empty_29 {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		image_in_offset {Type I LastRead 0 FirstWrite -1}
		kernel_offset {Type I LastRead 0 FirstWrite -1}
		mul_i {Type I LastRead 0 FirstWrite -1}
		mul35_i {Type I LastRead 0 FirstWrite -1}
		newCol_2 {Type I LastRead 0 FirstWrite -1}
		sum_18_out {Type O LastRead -1 FirstWrite 21}}
	LinearImageFilter_Pipeline_ker_rows_ker_cols7 {
		kernel {Type I LastRead 13 FirstWrite -1}
		image_in {Type I LastRead 16 FirstWrite -1}
		mul_ln7 {Type I LastRead 0 FirstWrite -1}
		padding {Type I LastRead 0 FirstWrite -1}
		kernel_dim {Type I LastRead 0 FirstWrite -1}
		add_0 {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		newRow_2 {Type I LastRead 0 FirstWrite -1}
		col_7 {Type I LastRead 0 FirstWrite -1}
		empty_28 {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		image_in_offset {Type I LastRead 0 FirstWrite -1}
		kernel_offset {Type I LastRead 0 FirstWrite -1}
		mul_i {Type I LastRead 0 FirstWrite -1}
		mul35_i {Type I LastRead 0 FirstWrite -1}
		newCol_2 {Type I LastRead 0 FirstWrite -1}
		sum_21_out {Type O LastRead -1 FirstWrite 21}}
	LinearImageFilter_Pipeline_ker_rows_ker_cols8 {
		kernel {Type I LastRead 13 FirstWrite -1}
		image_in {Type I LastRead 16 FirstWrite -1}
		mul_ln7 {Type I LastRead 0 FirstWrite -1}
		padding {Type I LastRead 0 FirstWrite -1}
		kernel_dim {Type I LastRead 0 FirstWrite -1}
		add_0 {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		newRow_2 {Type I LastRead 0 FirstWrite -1}
		col_8 {Type I LastRead 0 FirstWrite -1}
		empty_27 {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		image_in_offset {Type I LastRead 0 FirstWrite -1}
		kernel_offset {Type I LastRead 0 FirstWrite -1}
		mul_i {Type I LastRead 0 FirstWrite -1}
		mul35_i {Type I LastRead 0 FirstWrite -1}
		newCol_2 {Type I LastRead 0 FirstWrite -1}
		sum_24_out {Type O LastRead -1 FirstWrite 21}}
	LinearImageFilter_Pipeline_ker_rows_ker_cols9 {
		kernel {Type I LastRead 13 FirstWrite -1}
		image_in {Type I LastRead 16 FirstWrite -1}
		mul_ln7 {Type I LastRead 0 FirstWrite -1}
		padding {Type I LastRead 0 FirstWrite -1}
		kernel_dim {Type I LastRead 0 FirstWrite -1}
		add_0 {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		newRow_2 {Type I LastRead 0 FirstWrite -1}
		col_9 {Type I LastRead 0 FirstWrite -1}
		empty_26 {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		image_in_offset {Type I LastRead 0 FirstWrite -1}
		kernel_offset {Type I LastRead 0 FirstWrite -1}
		mul_i {Type I LastRead 0 FirstWrite -1}
		mul35_i {Type I LastRead 0 FirstWrite -1}
		newCol_2 {Type I LastRead 0 FirstWrite -1}
		sum_27_out {Type O LastRead -1 FirstWrite 21}}
	LinearImageFilter_Pipeline_ker_rows_ker_cols10 {
		kernel {Type I LastRead 13 FirstWrite -1}
		image_in {Type I LastRead 16 FirstWrite -1}
		mul_ln7 {Type I LastRead 0 FirstWrite -1}
		padding {Type I LastRead 0 FirstWrite -1}
		kernel_dim {Type I LastRead 0 FirstWrite -1}
		add_0 {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		newRow_2 {Type I LastRead 0 FirstWrite -1}
		col_10 {Type I LastRead 0 FirstWrite -1}
		empty_39 {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		image_in_offset {Type I LastRead 0 FirstWrite -1}
		kernel_offset {Type I LastRead 0 FirstWrite -1}
		mul_i {Type I LastRead 0 FirstWrite -1}
		mul35_i {Type I LastRead 0 FirstWrite -1}
		newCol_2 {Type I LastRead 0 FirstWrite -1}
		sum_30_out {Type O LastRead -1 FirstWrite 21}}
	LinearImageFilter_Pipeline_ker_rows_ker_cols11 {
		kernel {Type I LastRead 13 FirstWrite -1}
		image_in {Type I LastRead 16 FirstWrite -1}
		mul_ln7 {Type I LastRead 0 FirstWrite -1}
		padding {Type I LastRead 0 FirstWrite -1}
		kernel_dim {Type I LastRead 0 FirstWrite -1}
		add_0 {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		newRow_2 {Type I LastRead 0 FirstWrite -1}
		col_11 {Type I LastRead 0 FirstWrite -1}
		empty_38 {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		image_in_offset {Type I LastRead 0 FirstWrite -1}
		kernel_offset {Type I LastRead 0 FirstWrite -1}
		mul_i {Type I LastRead 0 FirstWrite -1}
		mul35_i {Type I LastRead 0 FirstWrite -1}
		newCol_2 {Type I LastRead 0 FirstWrite -1}
		sum_33_out {Type O LastRead -1 FirstWrite 21}}
	LinearImageFilter_Pipeline_ker_rows_ker_cols12 {
		kernel {Type I LastRead 13 FirstWrite -1}
		image_in {Type I LastRead 16 FirstWrite -1}
		mul_ln7 {Type I LastRead 0 FirstWrite -1}
		padding {Type I LastRead 0 FirstWrite -1}
		kernel_dim {Type I LastRead 0 FirstWrite -1}
		add_0 {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		newRow_2 {Type I LastRead 0 FirstWrite -1}
		col_12 {Type I LastRead 0 FirstWrite -1}
		empty_37 {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		image_in_offset {Type I LastRead 0 FirstWrite -1}
		kernel_offset {Type I LastRead 0 FirstWrite -1}
		mul_i {Type I LastRead 0 FirstWrite -1}
		mul35_i {Type I LastRead 0 FirstWrite -1}
		newCol_2 {Type I LastRead 0 FirstWrite -1}
		sum_36_out {Type O LastRead -1 FirstWrite 21}}
	LinearImageFilter_Pipeline_ker_rows_ker_cols13 {
		kernel {Type I LastRead 13 FirstWrite -1}
		image_in {Type I LastRead 16 FirstWrite -1}
		mul_ln7 {Type I LastRead 0 FirstWrite -1}
		padding {Type I LastRead 0 FirstWrite -1}
		kernel_dim {Type I LastRead 0 FirstWrite -1}
		add_0 {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		newRow_2 {Type I LastRead 0 FirstWrite -1}
		col_13 {Type I LastRead 0 FirstWrite -1}
		empty_36 {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		image_in_offset {Type I LastRead 0 FirstWrite -1}
		kernel_offset {Type I LastRead 0 FirstWrite -1}
		mul_i {Type I LastRead 0 FirstWrite -1}
		mul35_i {Type I LastRead 0 FirstWrite -1}
		newCol_2 {Type I LastRead 0 FirstWrite -1}
		sum_39_out {Type O LastRead -1 FirstWrite 21}}
	LinearImageFilter_Pipeline_ker_rows_ker_cols14 {
		kernel {Type I LastRead 13 FirstWrite -1}
		image_in {Type I LastRead 16 FirstWrite -1}
		mul_ln7 {Type I LastRead 0 FirstWrite -1}
		padding {Type I LastRead 0 FirstWrite -1}
		kernel_dim {Type I LastRead 0 FirstWrite -1}
		add_0 {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		newRow_2 {Type I LastRead 0 FirstWrite -1}
		col_14 {Type I LastRead 0 FirstWrite -1}
		empty_35 {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		image_in_offset {Type I LastRead 0 FirstWrite -1}
		kernel_offset {Type I LastRead 0 FirstWrite -1}
		mul_i {Type I LastRead 0 FirstWrite -1}
		mul35_i {Type I LastRead 0 FirstWrite -1}
		newCol_2 {Type I LastRead 0 FirstWrite -1}
		sum_42_out {Type O LastRead -1 FirstWrite 21}}
	LinearImageFilter_Pipeline_ker_rows_ker_cols15 {
		kernel {Type I LastRead 13 FirstWrite -1}
		image_in {Type I LastRead 16 FirstWrite -1}
		mul_ln7 {Type I LastRead 0 FirstWrite -1}
		padding {Type I LastRead 0 FirstWrite -1}
		kernel_dim {Type I LastRead 0 FirstWrite -1}
		add_0 {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		newRow_2 {Type I LastRead 0 FirstWrite -1}
		col_15 {Type I LastRead 0 FirstWrite -1}
		empty_34 {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		image_in_offset {Type I LastRead 0 FirstWrite -1}
		kernel_offset {Type I LastRead 0 FirstWrite -1}
		mul_i {Type I LastRead 0 FirstWrite -1}
		mul35_i {Type I LastRead 0 FirstWrite -1}
		newCol_2 {Type I LastRead 0 FirstWrite -1}
		sum_45_out {Type O LastRead -1 FirstWrite 21}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	image_out { m_axi {  { m_axi_image_out_AWVALID VALID 1 1 }  { m_axi_image_out_AWREADY READY 0 1 }  { m_axi_image_out_AWADDR ADDR 1 32 }  { m_axi_image_out_AWID ID 1 1 }  { m_axi_image_out_AWLEN SIZE 1 8 }  { m_axi_image_out_AWSIZE BURST 1 3 }  { m_axi_image_out_AWBURST LOCK 1 2 }  { m_axi_image_out_AWLOCK CACHE 1 2 }  { m_axi_image_out_AWCACHE PROT 1 4 }  { m_axi_image_out_AWPROT QOS 1 3 }  { m_axi_image_out_AWQOS REGION 1 4 }  { m_axi_image_out_AWREGION USER 1 4 }  { m_axi_image_out_AWUSER DATA 1 1 }  { m_axi_image_out_WVALID VALID 1 1 }  { m_axi_image_out_WREADY READY 0 1 }  { m_axi_image_out_WDATA FIFONUM 1 32 }  { m_axi_image_out_WSTRB STRB 1 4 }  { m_axi_image_out_WLAST LAST 1 1 }  { m_axi_image_out_WID ID 1 1 }  { m_axi_image_out_WUSER DATA 1 1 }  { m_axi_image_out_ARVALID VALID 1 1 }  { m_axi_image_out_ARREADY READY 0 1 }  { m_axi_image_out_ARADDR ADDR 1 32 }  { m_axi_image_out_ARID ID 1 1 }  { m_axi_image_out_ARLEN SIZE 1 8 }  { m_axi_image_out_ARSIZE BURST 1 3 }  { m_axi_image_out_ARBURST LOCK 1 2 }  { m_axi_image_out_ARLOCK CACHE 1 2 }  { m_axi_image_out_ARCACHE PROT 1 4 }  { m_axi_image_out_ARPROT QOS 1 3 }  { m_axi_image_out_ARQOS REGION 1 4 }  { m_axi_image_out_ARREGION USER 1 4 }  { m_axi_image_out_ARUSER DATA 1 1 }  { m_axi_image_out_RVALID VALID 0 1 }  { m_axi_image_out_RREADY READY 1 1 }  { m_axi_image_out_RDATA FIFONUM 0 32 }  { m_axi_image_out_RLAST LAST 0 1 }  { m_axi_image_out_RID ID 0 1 }  { m_axi_image_out_RUSER DATA 0 1 }  { m_axi_image_out_RRESP RESP 0 2 }  { m_axi_image_out_BVALID VALID 0 1 }  { m_axi_image_out_BREADY READY 1 1 }  { m_axi_image_out_BRESP RESP 0 2 }  { m_axi_image_out_BID ID 0 1 }  { m_axi_image_out_BUSER DATA 0 1 } } }
	image_in { m_axi {  { m_axi_image_in_AWVALID VALID 1 1 }  { m_axi_image_in_AWREADY READY 0 1 }  { m_axi_image_in_AWADDR ADDR 1 32 }  { m_axi_image_in_AWID ID 1 1 }  { m_axi_image_in_AWLEN SIZE 1 8 }  { m_axi_image_in_AWSIZE BURST 1 3 }  { m_axi_image_in_AWBURST LOCK 1 2 }  { m_axi_image_in_AWLOCK CACHE 1 2 }  { m_axi_image_in_AWCACHE PROT 1 4 }  { m_axi_image_in_AWPROT QOS 1 3 }  { m_axi_image_in_AWQOS REGION 1 4 }  { m_axi_image_in_AWREGION USER 1 4 }  { m_axi_image_in_AWUSER DATA 1 1 }  { m_axi_image_in_WVALID VALID 1 1 }  { m_axi_image_in_WREADY READY 0 1 }  { m_axi_image_in_WDATA FIFONUM 1 1024 }  { m_axi_image_in_WSTRB STRB 1 128 }  { m_axi_image_in_WLAST LAST 1 1 }  { m_axi_image_in_WID ID 1 1 }  { m_axi_image_in_WUSER DATA 1 1 }  { m_axi_image_in_ARVALID VALID 1 1 }  { m_axi_image_in_ARREADY READY 0 1 }  { m_axi_image_in_ARADDR ADDR 1 32 }  { m_axi_image_in_ARID ID 1 1 }  { m_axi_image_in_ARLEN SIZE 1 8 }  { m_axi_image_in_ARSIZE BURST 1 3 }  { m_axi_image_in_ARBURST LOCK 1 2 }  { m_axi_image_in_ARLOCK CACHE 1 2 }  { m_axi_image_in_ARCACHE PROT 1 4 }  { m_axi_image_in_ARPROT QOS 1 3 }  { m_axi_image_in_ARQOS REGION 1 4 }  { m_axi_image_in_ARREGION USER 1 4 }  { m_axi_image_in_ARUSER DATA 1 1 }  { m_axi_image_in_RVALID VALID 0 1 }  { m_axi_image_in_RREADY READY 1 1 }  { m_axi_image_in_RDATA FIFONUM 0 1024 }  { m_axi_image_in_RLAST LAST 0 1 }  { m_axi_image_in_RID ID 0 1 }  { m_axi_image_in_RUSER DATA 0 1 }  { m_axi_image_in_RRESP RESP 0 2 }  { m_axi_image_in_BVALID VALID 0 1 }  { m_axi_image_in_BREADY READY 1 1 }  { m_axi_image_in_BRESP RESP 0 2 }  { m_axi_image_in_BID ID 0 1 }  { m_axi_image_in_BUSER DATA 0 1 } } }
	kernel { m_axi {  { m_axi_kernel_AWVALID VALID 1 1 }  { m_axi_kernel_AWREADY READY 0 1 }  { m_axi_kernel_AWADDR ADDR 1 32 }  { m_axi_kernel_AWID ID 1 1 }  { m_axi_kernel_AWLEN SIZE 1 8 }  { m_axi_kernel_AWSIZE BURST 1 3 }  { m_axi_kernel_AWBURST LOCK 1 2 }  { m_axi_kernel_AWLOCK CACHE 1 2 }  { m_axi_kernel_AWCACHE PROT 1 4 }  { m_axi_kernel_AWPROT QOS 1 3 }  { m_axi_kernel_AWQOS REGION 1 4 }  { m_axi_kernel_AWREGION USER 1 4 }  { m_axi_kernel_AWUSER DATA 1 1 }  { m_axi_kernel_WVALID VALID 1 1 }  { m_axi_kernel_WREADY READY 0 1 }  { m_axi_kernel_WDATA FIFONUM 1 1024 }  { m_axi_kernel_WSTRB STRB 1 128 }  { m_axi_kernel_WLAST LAST 1 1 }  { m_axi_kernel_WID ID 1 1 }  { m_axi_kernel_WUSER DATA 1 1 }  { m_axi_kernel_ARVALID VALID 1 1 }  { m_axi_kernel_ARREADY READY 0 1 }  { m_axi_kernel_ARADDR ADDR 1 32 }  { m_axi_kernel_ARID ID 1 1 }  { m_axi_kernel_ARLEN SIZE 1 8 }  { m_axi_kernel_ARSIZE BURST 1 3 }  { m_axi_kernel_ARBURST LOCK 1 2 }  { m_axi_kernel_ARLOCK CACHE 1 2 }  { m_axi_kernel_ARCACHE PROT 1 4 }  { m_axi_kernel_ARPROT QOS 1 3 }  { m_axi_kernel_ARQOS REGION 1 4 }  { m_axi_kernel_ARREGION USER 1 4 }  { m_axi_kernel_ARUSER DATA 1 1 }  { m_axi_kernel_RVALID VALID 0 1 }  { m_axi_kernel_RREADY READY 1 1 }  { m_axi_kernel_RDATA FIFONUM 0 1024 }  { m_axi_kernel_RLAST LAST 0 1 }  { m_axi_kernel_RID ID 0 1 }  { m_axi_kernel_RUSER DATA 0 1 }  { m_axi_kernel_RRESP RESP 0 2 }  { m_axi_kernel_BVALID VALID 0 1 }  { m_axi_kernel_BREADY READY 1 1 }  { m_axi_kernel_BRESP RESP 0 2 }  { m_axi_kernel_BID ID 0 1 }  { m_axi_kernel_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict image_out {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}
dict set maxi_interface_dict image_in {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY NUM_CACHE_LINES 256 CACHE_LINE_DEPTH 128 CACHE_LINE_WIDTH 32}
dict set maxi_interface_dict kernel {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY NUM_CACHE_LINES 1 CACHE_LINE_DEPTH 128 CACHE_LINE_WIDTH 32}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ image_out 1 }
	{ image_in 1 }
	{ kernel 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ image_out 1 }
	{ image_in 1 }
	{ kernel 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
