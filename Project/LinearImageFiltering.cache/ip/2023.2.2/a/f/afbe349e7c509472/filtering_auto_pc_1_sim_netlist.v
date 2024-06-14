// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.2 (lin64) Build 4126759 Thu Feb  8 23:52:05 MST 2024
// Date        : Fri Jun 14 22:28:22 2024
// Host        : Hephaestion running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ filtering_auto_pc_1_sim_netlist.v
// Design      : filtering_auto_pc_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_29_axic_fifo
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_29_fifo_gen inst
       (.E(E),
        .Q(Q),
        .SR(SR),
        .S_AXI_AREADY_I_reg(S_AXI_AREADY_I_reg),
        .aclk(aclk),
        .\areset_d_reg[1] (\areset_d_reg[1] ),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(m_axi_awvalid_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_29_fifo_gen
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_i_3_n_0;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire cmd_push;
  wire command_ongoing;
  wire command_ongoing_i_2_n_0;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire full;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [4:4]NLW_fifo_gen_inst_dout_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AREADY_I_i_1
       (.I0(aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'h22722272FFFF2272)) 
    S_AXI_AREADY_I_i_2
       (.I0(E),
        .I1(s_axi_awvalid),
        .I2(m_axi_awready),
        .I3(S_AXI_AREADY_I_i_3_n_0),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(S_AXI_AREADY_I_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    S_AXI_AREADY_I_i_3
       (.I0(m_axi_awvalid_0),
        .I1(full),
        .I2(command_ongoing),
        .O(S_AXI_AREADY_I_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00888A88)) 
    cmd_push_block_i_1
       (.I0(aresetn),
        .I1(m_axi_awvalid_0),
        .I2(full),
        .I3(command_ongoing),
        .I4(m_axi_awready),
        .O(aresetn_0));
  LUT6 #(
    .INIT(64'hF222FFFFD000D000)) 
    command_ongoing_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(E),
        .I3(s_axi_awvalid),
        .I4(command_ongoing_i_2_n_0),
        .I5(command_ongoing),
        .O(\areset_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    command_ongoing_i_2
       (.I0(m_axi_awready),
        .I1(command_ongoing),
        .I2(full),
        .I3(m_axi_awvalid_0),
        .O(command_ongoing_i_2_n_0));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "5" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "5" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_9 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(aclk),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din({1'b0,m_axi_awlen}),
        .dout({NLW_fifo_gen_inst_dout_UNCONNECTED[4],dout}),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    fifo_gen_inst_i_1
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(cmd_push));
  LUT6 #(
    .INIT(64'hE4E4CC664E4ECC66)) 
    \length_counter_1[1]_i_1 
       (.I0(empty_fwft_i_reg),
        .I1(length_counter_1_reg[1]),
        .I2(dout[1]),
        .I3(length_counter_1_reg[0]),
        .I4(first_mi_word),
        .I5(dout[0]),
        .O(length_counter_1_reg_1_sn_1));
  LUT3 #(
    .INIT(8'hA2)) 
    m_axi_awvalid_INST_0
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(m_axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_wvalid_INST_0
       (.I0(s_axi_wvalid),
        .I1(empty),
        .O(m_axi_wvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    s_axi_wready_INST_0
       (.I0(empty),
        .I1(s_axi_wvalid),
        .I2(m_axi_wready),
        .O(empty_fwft_i_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_30_a_axi3_conv
   (dout,
    empty,
    SR,
    m_axi_awlen,
    m_axi_awlock,
    E,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_awaddr,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    aclk,
    rd_en,
    s_axi_awlock,
    aresetn,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output [3:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [0:0]E;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  input aclk;
  input rd_en;
  input [0:0]s_axi_awlock;
  input aresetn;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input s_axi_awvalid;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;

  wire [0:0]E;
  wire [0:0]SR;
  wire \USE_BURSTS.cmd_queue_n_11 ;
  wire \USE_BURSTS.cmd_queue_n_12 ;
  wire \USE_BURSTS.cmd_queue_n_6 ;
  wire aclk;
  wire [1:0]areset_d;
  wire aresetn;
  wire cmd_push_block_reg_n_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  FDRE \S_AXI_AADDR_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[0]),
        .Q(m_axi_awaddr[0]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[10]),
        .Q(m_axi_awaddr[10]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[11]),
        .Q(m_axi_awaddr[11]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[12]),
        .Q(m_axi_awaddr[12]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[13]),
        .Q(m_axi_awaddr[13]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[14]),
        .Q(m_axi_awaddr[14]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[15]),
        .Q(m_axi_awaddr[15]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[16]),
        .Q(m_axi_awaddr[16]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[17]),
        .Q(m_axi_awaddr[17]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[18]),
        .Q(m_axi_awaddr[18]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[19]),
        .Q(m_axi_awaddr[19]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[1]),
        .Q(m_axi_awaddr[1]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[20]),
        .Q(m_axi_awaddr[20]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[21]),
        .Q(m_axi_awaddr[21]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[22]),
        .Q(m_axi_awaddr[22]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[23]),
        .Q(m_axi_awaddr[23]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[24]),
        .Q(m_axi_awaddr[24]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[25]),
        .Q(m_axi_awaddr[25]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[26]),
        .Q(m_axi_awaddr[26]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[27]),
        .Q(m_axi_awaddr[27]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[28]),
        .Q(m_axi_awaddr[28]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[29]),
        .Q(m_axi_awaddr[29]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[2]),
        .Q(m_axi_awaddr[2]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[30]),
        .Q(m_axi_awaddr[30]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[31]),
        .Q(m_axi_awaddr[31]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[3]),
        .Q(m_axi_awaddr[3]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[4]),
        .Q(m_axi_awaddr[4]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[5]),
        .Q(m_axi_awaddr[5]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[6]),
        .Q(m_axi_awaddr[6]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[7]),
        .Q(m_axi_awaddr[7]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[8]),
        .Q(m_axi_awaddr[8]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[9]),
        .Q(m_axi_awaddr[9]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[0]),
        .Q(m_axi_awburst[0]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[1]),
        .Q(m_axi_awburst[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[0]),
        .Q(m_axi_awcache[0]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[1]),
        .Q(m_axi_awcache[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[2]),
        .Q(m_axi_awcache[2]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[3]),
        .Q(m_axi_awcache[3]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[0]),
        .Q(m_axi_awlen[0]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[1]),
        .Q(m_axi_awlen[1]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[2]),
        .Q(m_axi_awlen[2]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[3]),
        .Q(m_axi_awlen[3]),
        .R(SR));
  FDRE \S_AXI_ALOCK_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlock),
        .Q(m_axi_awlock),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[0]),
        .Q(m_axi_awprot[0]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[1]),
        .Q(m_axi_awprot[1]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[2]),
        .Q(m_axi_awprot[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[0]),
        .Q(m_axi_awqos[0]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[1]),
        .Q(m_axi_awqos[1]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[2]),
        .Q(m_axi_awqos[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[3]),
        .Q(m_axi_awqos[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_AREADY_I_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_11 ),
        .Q(E),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[0]),
        .Q(m_axi_awsize[0]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[1]),
        .Q(m_axi_awsize[1]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[2]),
        .Q(m_axi_awsize[2]),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_29_axic_fifo \USE_BURSTS.cmd_queue 
       (.E(E),
        .Q(areset_d),
        .SR(SR),
        .S_AXI_AREADY_I_reg(\USE_BURSTS.cmd_queue_n_11 ),
        .aclk(aclk),
        .\areset_d_reg[1] (\USE_BURSTS.cmd_queue_n_12 ),
        .aresetn(aresetn),
        .aresetn_0(\USE_BURSTS.cmd_queue_n_6 ),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(cmd_push_block_reg_n_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(SR),
        .Q(areset_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_push_block_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_6 ),
        .Q(cmd_push_block_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    command_ongoing_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_12 ),
        .Q(command_ongoing),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_30_axi3_conv
   (m_axi_awlen,
    m_axi_awaddr,
    E,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_wlast,
    aresetn,
    m_axi_awready,
    aclk,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    m_axi_wready,
    s_axi_wvalid,
    s_axi_awvalid);
  output [3:0]m_axi_awlen;
  output [31:0]m_axi_awaddr;
  output [0:0]E;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output m_axi_wlast;
  input aresetn;
  input m_axi_awready;
  input aclk;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input m_axi_wready;
  input s_axi_wvalid;
  input s_axi_awvalid;

  wire [0:0]E;
  wire \USE_BURSTS.cmd_queue/inst/empty ;
  wire [3:0]\USE_WRITE.wr_cmd_length ;
  wire \USE_WRITE.wr_cmd_ready ;
  wire \USE_WRITE.write_addr_inst_n_13 ;
  wire \USE_WRITE.write_addr_inst_n_5 ;
  wire aclk;
  wire aresetn;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_30_a_axi3_conv \USE_WRITE.write_addr_inst 
       (.E(E),
        .SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .aresetn(aresetn),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(\USE_WRITE.write_addr_inst_n_13 ),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_30_w_axi3_conv \USE_WRITE.write_data_inst 
       (.SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .first_mi_word(first_mi_word),
        .\length_counter_1_reg[1]_0 (length_counter_1_reg),
        .\length_counter_1_reg[1]_1 (\USE_WRITE.write_addr_inst_n_13 ),
        .\length_counter_1_reg[2]_0 (empty_fwft_i_reg),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "zynq" *) 
(* C_IGNORE_ID = "1" *) (* C_M_AXI_PROTOCOL = "1" *) (* C_S_AXI_PROTOCOL = "0" *) 
(* C_TRANSLATION_MODE = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* P_AXI3 = "1" *) 
(* P_AXI4 = "0" *) (* P_AXILITE = "2" *) (* P_AXILITE_SIZE = "3'b011" *) 
(* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) (* P_INCR = "2'b01" *) 
(* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_30_axi_protocol_converter
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire m_axi_arready;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_araddr[31:0] = s_axi_araddr;
  assign m_axi_arburst[1:0] = s_axi_arburst;
  assign m_axi_arcache[3:0] = s_axi_arcache;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[3:0] = s_axi_arlen[3:0];
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = s_axi_arlock;
  assign m_axi_arprot[2:0] = s_axi_arprot;
  assign m_axi_arqos[3:0] = s_axi_arqos;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2:0] = s_axi_arsize;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = s_axi_arvalid;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = s_axi_rready;
  assign m_axi_wdata[63:0] = s_axi_wdata;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wstrb[7:0] = s_axi_wstrb;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_arready = m_axi_arready;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1:0] = m_axi_bresp;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = m_axi_bvalid;
  assign s_axi_rdata[63:0] = m_axi_rdata;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = m_axi_rlast;
  assign s_axi_rresp[1:0] = m_axi_rresp;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = m_axi_rvalid;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_30_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
       (.E(s_axi_awready),
        .aclk(aclk),
        .aresetn(aresetn),
        .empty_fwft_i_reg(s_axi_wready),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(\^m_axi_awlock ),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_30_w_axi3_conv
   (\length_counter_1_reg[1]_0 ,
    first_mi_word,
    rd_en,
    m_axi_wlast,
    SR,
    aclk,
    \length_counter_1_reg[1]_1 ,
    \length_counter_1_reg[2]_0 ,
    m_axi_wready,
    s_axi_wvalid,
    empty,
    dout);
  output [1:0]\length_counter_1_reg[1]_0 ;
  output first_mi_word;
  output rd_en;
  output m_axi_wlast;
  input [0:0]SR;
  input aclk;
  input \length_counter_1_reg[1]_1 ;
  input \length_counter_1_reg[2]_0 ;
  input m_axi_wready;
  input s_axi_wvalid;
  input empty;
  input [3:0]dout;

  wire [0:0]SR;
  wire aclk;
  wire [3:0]dout;
  wire empty;
  wire first_mi_word;
  wire first_mi_word_i_1_n_0;
  wire \length_counter_1[0]_i_1_n_0 ;
  wire \length_counter_1[2]_i_1_n_0 ;
  wire \length_counter_1[3]_i_1_n_0 ;
  wire \length_counter_1[4]_i_1_n_0 ;
  wire \length_counter_1[4]_i_2_n_0 ;
  wire \length_counter_1[5]_i_1_n_0 ;
  wire \length_counter_1[6]_i_1_n_0 ;
  wire \length_counter_1[7]_i_1_n_0 ;
  wire [7:2]length_counter_1_reg;
  wire [1:0]\length_counter_1_reg[1]_0 ;
  wire \length_counter_1_reg[1]_1 ;
  wire \length_counter_1_reg[2]_0 ;
  wire m_axi_wlast;
  wire m_axi_wlast_INST_0_i_1_n_0;
  wire m_axi_wlast_INST_0_i_2_n_0;
  wire m_axi_wlast_INST_0_i_3_n_0;
  wire m_axi_wready;
  wire rd_en;
  wire s_axi_wvalid;

  LUT6 #(
    .INIT(64'h0000CC000000CC04)) 
    fifo_gen_inst_i_2
       (.I0(length_counter_1_reg[7]),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[5]),
        .I3(first_mi_word),
        .I4(m_axi_wlast_INST_0_i_1_n_0),
        .I5(length_counter_1_reg[6]),
        .O(rd_en));
  LUT6 #(
    .INIT(64'h0F0FFFFF00010000)) 
    first_mi_word_i_1
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(length_counter_1_reg[6]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(first_mi_word),
        .O(first_mi_word_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    first_mi_word_reg
       (.C(aclk),
        .CE(1'b1),
        .D(first_mi_word_i_1_n_0),
        .Q(first_mi_word),
        .S(SR));
  LUT6 #(
    .INIT(64'hF2FFFFFF07000000)) 
    \length_counter_1[0]_i_1 
       (.I0(first_mi_word),
        .I1(dout[0]),
        .I2(empty),
        .I3(s_axi_wvalid),
        .I4(m_axi_wready),
        .I5(\length_counter_1_reg[1]_0 [0]),
        .O(\length_counter_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hD8D272D2)) 
    \length_counter_1[2]_i_1 
       (.I0(\length_counter_1_reg[2]_0 ),
        .I1(m_axi_wlast_INST_0_i_3_n_0),
        .I2(length_counter_1_reg[2]),
        .I3(first_mi_word),
        .I4(dout[2]),
        .O(\length_counter_1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8B474B4)) 
    \length_counter_1[3]_i_1 
       (.I0(\length_counter_1[4]_i_2_n_0 ),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[3]),
        .I3(first_mi_word),
        .I4(dout[3]),
        .O(\length_counter_1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A3A35AAAAAAAA)) 
    \length_counter_1[4]_i_1 
       (.I0(length_counter_1_reg[4]),
        .I1(dout[3]),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[3]),
        .I4(\length_counter_1[4]_i_2_n_0 ),
        .I5(\length_counter_1_reg[2]_0 ),
        .O(\length_counter_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \length_counter_1[4]_i_2 
       (.I0(m_axi_wlast_INST_0_i_3_n_0),
        .I1(length_counter_1_reg[2]),
        .I2(first_mi_word),
        .I3(dout[2]),
        .O(\length_counter_1[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF0000FFF70808)) 
    \length_counter_1[5]_i_1 
       (.I0(m_axi_wready),
        .I1(s_axi_wvalid),
        .I2(empty),
        .I3(first_mi_word),
        .I4(length_counter_1_reg[5]),
        .I5(m_axi_wlast_INST_0_i_1_n_0),
        .O(\length_counter_1[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3EFF0D00)) 
    \length_counter_1[6]_i_1 
       (.I0(length_counter_1_reg[5]),
        .I1(first_mi_word),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(\length_counter_1_reg[2]_0 ),
        .I4(length_counter_1_reg[6]),
        .O(\length_counter_1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F3EFFFF30310000)) 
    \length_counter_1[7]_i_1 
       (.I0(length_counter_1_reg[6]),
        .I1(m_axi_wlast_INST_0_i_1_n_0),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[5]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(length_counter_1_reg[7]),
        .O(\length_counter_1[7]_i_1_n_0 ));
  FDRE \length_counter_1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[0]_i_1_n_0 ),
        .Q(\length_counter_1_reg[1]_0 [0]),
        .R(SR));
  FDRE \length_counter_1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1_reg[1]_1 ),
        .Q(\length_counter_1_reg[1]_0 [1]),
        .R(SR));
  FDRE \length_counter_1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[2]_i_1_n_0 ),
        .Q(length_counter_1_reg[2]),
        .R(SR));
  FDRE \length_counter_1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[3]_i_1_n_0 ),
        .Q(length_counter_1_reg[3]),
        .R(SR));
  FDRE \length_counter_1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[4]_i_1_n_0 ),
        .Q(length_counter_1_reg[4]),
        .R(SR));
  FDRE \length_counter_1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[5]_i_1_n_0 ),
        .Q(length_counter_1_reg[5]),
        .R(SR));
  FDRE \length_counter_1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[6]_i_1_n_0 ),
        .Q(length_counter_1_reg[6]),
        .R(SR));
  FDRE \length_counter_1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[7]_i_1_n_0 ),
        .Q(length_counter_1_reg[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00F000F1)) 
    m_axi_wlast_INST_0
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(first_mi_word),
        .I3(m_axi_wlast_INST_0_i_1_n_0),
        .I4(length_counter_1_reg[6]),
        .O(m_axi_wlast));
  LUT6 #(
    .INIT(64'hFFFFFFFEFCFCFFFE)) 
    m_axi_wlast_INST_0_i_1
       (.I0(length_counter_1_reg[4]),
        .I1(m_axi_wlast_INST_0_i_2_n_0),
        .I2(m_axi_wlast_INST_0_i_3_n_0),
        .I3(length_counter_1_reg[2]),
        .I4(first_mi_word),
        .I5(dout[2]),
        .O(m_axi_wlast_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axi_wlast_INST_0_i_2
       (.I0(dout[3]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg[3]),
        .O(m_axi_wlast_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    m_axi_wlast_INST_0_i_3
       (.I0(\length_counter_1_reg[1]_0 [1]),
        .I1(dout[1]),
        .I2(\length_counter_1_reg[1]_0 [0]),
        .I3(first_mi_word),
        .I4(dout[0]),
        .O(m_axi_wlast_INST_0_i_3_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "filtering_auto_pc_1,axi_protocol_converter_v2_1_30_axi_protocol_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_converter_v2_1_30_axi_protocol_converter,Vivado 2023.2.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN filtering_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [63:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [7:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [63:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN filtering_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [3:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [1:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [63:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [7:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [3:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [1:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [63:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN filtering_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]\^m_axi_arlock ;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [63:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \^m_axi_arlock [0];
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  GND GND
       (.G(\<const0> ));
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_IGNORE_ID = "1" *) 
  (* C_M_AXI_PROTOCOL = "1" *) 
  (* C_S_AXI_PROTOCOL = "0" *) 
  (* C_TRANSLATION_MODE = "0" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b011" *) 
  (* P_CONVERSION = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_INCR = "2'b01" *) 
  (* P_PROTECTION = "1" *) 
  (* P_SLVERR = "2'b10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_30_axi_protocol_converter inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock({NLW_inst_m_axi_arlock_UNCONNECTED[1],\^m_axi_arlock }),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock({NLW_inst_m_axi_awlock_UNCONNECTED[1],\^m_axi_awlock }),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,s_axi_arlen[3:0]}),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,s_axi_awlen[3:0]}),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
IeuNsEXmVleGfwBxFmxEMCCVgg2qbCf0C2bwpdoyz5gr6jqeKgWyUwWAvW58C4Ju5m26L3oHL5M9
7DMFPusp3yV0gwa1gwAQdSyghMghLLltIdyGcPxYg+TuQ2wbEmtlWigIOQwuBdPnHRVcUfAkU628
0y+CQKaLztm+KDltZzs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rSF9UTVANrV/jrzrLct0wdPRsB5iWnINE1ALAkBLwamxxGSSd7oC9xvLu77zh4K0Pzb0/03zhBgK
sU8Pw0pvsFvM4D+YxWRllbw7+CEAkcRHpLich+bIPK7WpVMjRSAqU5RjemODdner6I1+Y3d19jl+
SxHI8IlWVPEcCfAmdo1f3iwpnBqLktuBtlE4uqabD+y9NR9EqhJETxGaIDswTl5QR3G3bL+PzWoq
idEKLHaDxCoOy67j4rroU6CJwAeEHQ7JL6+jVJz7YSK07bKOw/LfUuyCllcT4ClnswvOYFonFr0h
JaFOiY0KQhBClW2QChw+PMOcD89NIbRwj9iDNg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
k8DPPgLMDRraAU0p3aEGdf8/L3RFkaAoqi0fgg2Oj1guPg6wJTckv33asmY5q7RNYhpmu2y5fM6q
qlV9MoXv07B+d+4k7yDFkZdIsHwAbYGRBFNMroG4e0AuAkXHb3JAEMPNw0uhdCGQCKFeXGlG8S67
4thJ6I8vrz+36xSIzlE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qYxYssjKfUK4pEtpfyCcC934D/5HuHBQAVHkSGNeZ/Rd0dpQeVwgvsYjLVHqeiKhiQlfEN7msEGd
U104Mov0LHTc0x6wbfltnCMMyh/xSNt0e5VXFEV3dOzlxwSnDZu8aD/6DnDQ7BhA518Dd29Pa8P/
YoSgYGy5/WR+OJEGkQ7lCgHEI/WYMWwp8jqt+Nwh7h9d9wlcCwUfJo8rDo8SHr6+PWWqB9XjEpxZ
BKzCgXgvhAqvCarVexi2Cg8uZjP2TfEbadjrSFEM+ejssUBibibJFmWWtWEcP6VLTgdkpsNIzV/J
DSU51Imo/nnaMHGPS9reXFCk0Ht2aH+KMqj87w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WIG1sDbTptDm1jZFkRHuFOH6Kc+kPamTh4QxfB1a5byQHpebRwS4S+tMikOtRauZZSd/MeSFPgXZ
stb+zDdCDurDGDYkn/HSApYCbeW4A2jui9xLKt8dWsjq03U2vwbpPk5kkbSCpoCAGHPGMiz6PtO5
hdTWfIEN4On61eKg5ASofgf4GswQb1FKgWEbqt3xoo3muHjNkfXHU8niJNSxdq+mwlE+zmT0kUfT
m5ToGuYHEGF8ZCX33X7Rrf9GSKHV1cWEaHZTScMODHAFDK9N/lPe6w8BsND+T24nVfOCcbR6tdTv
K/dQ0619zbOFR1E+3o/m+A1c9slbdP2U32a5iQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BGD1pAvkYj2fDu5qUvste+lJdN0wjqBOn+R3cbzlJMg1QunqvLp2bD35ufCCTdIiaYnCVcaYPMWZ
cGVtBx+hOcRmA4E1xRgo6leiLGPHKdnRCcrE6yHVEhDKZyPrrtcfsFMN/blR1iIDsbRKjufzH2nS
9u2e2ur+zL0GFrocDVX7NwOOPGlrtDcAUJ6D6r6U0ISORn24UWuW0ECmMKfvuvJ8tq4vSejB664U
/WSRPmn4ehKpXojfoKrIYg+BvUBHEh3ohZjdD6Fevc8kFp6nyOQoN4iVMXagm0Ywtiu6L4MQWk/6
96etE8lFIrzx6pL+FtY/XUnqXyhSk4gHvSJ0fw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rjYkmDUZzms5wDZ6I/BiNRxKZmYOID831gXHOhiQa4mf0y9x+ryNTfppLyf9Ke6eQjX+4XqTYCSz
2IGqRmh3SmXPllY5p2koQF7fpzTDlXOeq1wIzUGWDG4J1v5JA35anWkKtkul4BDUX2PLGEFUce94
kVt7hkdPA7wdZBnR5a5bTHF78e3wIk89Z+YnfhizyIijwCvADO18COvK9HoRTwOB1RKumSU7aJun
59/SFKF9t4JyGMap2Qw21N95Fji9CDIn8Lr8QjVbpEmIQxz1yfSzMO20B/nkW72UJJh81YwJMXWW
h2vSU0b9p1xI6gYWLneIVtpmuzlZjzyAaeFUwQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
SSRjsNWMgWEhRNf4ed4xNww0ztQmWyHDFsiWe540ICF9RNmgU+0OVl7g7lyU7iRodCrm64+OvhE/
J4n+2I8yUMna1KwHzXSZh1QhQawd9uwqWZfciaDBJEyoKSDcyeRFhuRLKlchHaZq998odZtlit2w
g/UrFTEGdVD9nTdaM9A1tkdnAbbBeWJVldJJ2mzhO1bMc0b0sKd1UUPGvjpihv6jJuhyJAKwih36
Od1Gaa95QmkOYJdXNVBU/1W30TB3rYUlgaPf4ouZrl+p29iQ3kin4tAxuUwWM7vUaAU3uEA7eWA3
rewD5d3leNxLCap8Tu0Wv18lTddzQgjGH8UF1WGcmpOKNLjJMbxEMKbm8Q7dkPS7LZhRGqSxp/RN
uE3yG/zHQXF+0UUbh/cAgfcbT2NqMWuLaD1+/U87NhE0UaNOjFEyuUdgRr5dFIGABUr5sATTplHC
DMhiIEeku4r2oftkip0hTnpVg7Nkxf+h51UttKFPH2AGgNBtwu7iYNmu

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NomvCwmSWLz/GR42spTGFjZYbHMT3e+SjYBB6QOCP8VkCW296sCcKfn52ZNwLaoMFeydrtvKXbDc
e7GwcvdFD5PcrxxkwLc5nwcIkXmyAkr/ZDKU5LdC0o2oBmzXH21jYO8h8dAMOj/imQFkqsrTbB1j
IKn+/hawMzBf1rvV4EVSiZbMYZ8zG6CmAQMNih8ifoYNCnLCeA/jWlbPwRr2g9WSymwCgNEGiQK5
gil1swj9uzNvyjYZn+vqk816MfPqCPyQKmT4mOKmVN5ueDr9q6vV+AMmB3I68hqZbmRzDVAaXIk9
2X7BFjNBmVm7hHQS8gkjN726StbZ21KlmkciRw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1FXIqUZducmaRXS0tgw0FCjO5WjfmUFQ9fSFHzUoKg5G0IDTYfvJcLqZnBNIru7hXtcINqO5+f0e
CizV7nJeE3D2EG9H5FhLOIK5i9pKIePioaMeqEfeiojYcpG+VnT+U3oKuKStHRx5rB+BATVGawN2
8X+ODAbld31s6Cj43HF1VIORNbH5td9L+54nsSB9nszRvG1atNy7D0FgfJsf9F3ZorCIYvoL21Jw
0nym8lPS+tenVAV4d/8BrlKQYHc2T/MjWrjyH+U9hZ9zD2/JPUSa2gZEosrK5YMXC+iRAXM79h8F
QkpXs+5u2a3qOzb/Pib75ND2wvyoemeWR80i1w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VaLousmxGfzbBtOss8BzaJ6eXN3MFQmRkf8AAOWjPhbozEz1HqWyUnZRzqg5u2DEDSN18C+oPnuV
Fij8+NK9/8Ru5X+lnuqFwaqkoNUrDq80NMaWCmkN/AyEEjZuHAmYCfjIjLtsYImyAH9duGegwcLq
P7GktR6yda77xuVSsDuJpdXWZtTtGZJVrpQ1rQmiFrGrK5OEyun35wXvcz4P4w9viiA1jcmN5zXs
ylsEBHVLWGqKMCLv70KCtndUlhUphcldK+JtyKVWkkI9+HX78ShvRjqC63AFRTmsB+vCGZZJk68r
Qnmy5h0wRg0C239x2KAftiwtTdH6jorC5dRnAQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 71792)
`pragma protect data_block
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
NgWUzu9/wUhPNAVsLecRtnZwPLIpRFlbXA6KIx4=
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
