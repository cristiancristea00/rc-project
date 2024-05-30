# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name kernel \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel \
    op interface \
    ports { m_axi_kernel_AWVALID { O 1 bit } m_axi_kernel_AWREADY { I 1 bit } m_axi_kernel_AWADDR { O 32 vector } m_axi_kernel_AWID { O 1 vector } m_axi_kernel_AWLEN { O 32 vector } m_axi_kernel_AWSIZE { O 3 vector } m_axi_kernel_AWBURST { O 2 vector } m_axi_kernel_AWLOCK { O 2 vector } m_axi_kernel_AWCACHE { O 4 vector } m_axi_kernel_AWPROT { O 3 vector } m_axi_kernel_AWQOS { O 4 vector } m_axi_kernel_AWREGION { O 4 vector } m_axi_kernel_AWUSER { O 1 vector } m_axi_kernel_WVALID { O 1 bit } m_axi_kernel_WREADY { I 1 bit } m_axi_kernel_WDATA { O 32 vector } m_axi_kernel_WSTRB { O 4 vector } m_axi_kernel_WLAST { O 1 bit } m_axi_kernel_WID { O 1 vector } m_axi_kernel_WUSER { O 1 vector } m_axi_kernel_ARVALID { O 1 bit } m_axi_kernel_ARREADY { I 1 bit } m_axi_kernel_ARADDR { O 32 vector } m_axi_kernel_ARID { O 1 vector } m_axi_kernel_ARLEN { O 32 vector } m_axi_kernel_ARSIZE { O 3 vector } m_axi_kernel_ARBURST { O 2 vector } m_axi_kernel_ARLOCK { O 2 vector } m_axi_kernel_ARCACHE { O 4 vector } m_axi_kernel_ARPROT { O 3 vector } m_axi_kernel_ARQOS { O 4 vector } m_axi_kernel_ARREGION { O 4 vector } m_axi_kernel_ARUSER { O 1 vector } m_axi_kernel_RVALID { I 1 bit } m_axi_kernel_RREADY { O 1 bit } m_axi_kernel_RDATA { I 32 vector } m_axi_kernel_RLAST { I 1 bit } m_axi_kernel_RID { I 1 vector } m_axi_kernel_RFIFONUM { I 9 vector } m_axi_kernel_RUSER { I 1 vector } m_axi_kernel_RRESP { I 2 vector } m_axi_kernel_BVALID { I 1 bit } m_axi_kernel_BREADY { O 1 bit } m_axi_kernel_BRESP { I 2 vector } m_axi_kernel_BID { I 1 vector } m_axi_kernel_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name image_in \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_image_in \
    op interface \
    ports { m_axi_image_in_AWVALID { O 1 bit } m_axi_image_in_AWREADY { I 1 bit } m_axi_image_in_AWADDR { O 32 vector } m_axi_image_in_AWID { O 1 vector } m_axi_image_in_AWLEN { O 32 vector } m_axi_image_in_AWSIZE { O 3 vector } m_axi_image_in_AWBURST { O 2 vector } m_axi_image_in_AWLOCK { O 2 vector } m_axi_image_in_AWCACHE { O 4 vector } m_axi_image_in_AWPROT { O 3 vector } m_axi_image_in_AWQOS { O 4 vector } m_axi_image_in_AWREGION { O 4 vector } m_axi_image_in_AWUSER { O 1 vector } m_axi_image_in_WVALID { O 1 bit } m_axi_image_in_WREADY { I 1 bit } m_axi_image_in_WDATA { O 32 vector } m_axi_image_in_WSTRB { O 4 vector } m_axi_image_in_WLAST { O 1 bit } m_axi_image_in_WID { O 1 vector } m_axi_image_in_WUSER { O 1 vector } m_axi_image_in_ARVALID { O 1 bit } m_axi_image_in_ARREADY { I 1 bit } m_axi_image_in_ARADDR { O 32 vector } m_axi_image_in_ARID { O 1 vector } m_axi_image_in_ARLEN { O 32 vector } m_axi_image_in_ARSIZE { O 3 vector } m_axi_image_in_ARBURST { O 2 vector } m_axi_image_in_ARLOCK { O 2 vector } m_axi_image_in_ARCACHE { O 4 vector } m_axi_image_in_ARPROT { O 3 vector } m_axi_image_in_ARQOS { O 4 vector } m_axi_image_in_ARREGION { O 4 vector } m_axi_image_in_ARUSER { O 1 vector } m_axi_image_in_RVALID { I 1 bit } m_axi_image_in_RREADY { O 1 bit } m_axi_image_in_RDATA { I 32 vector } m_axi_image_in_RLAST { I 1 bit } m_axi_image_in_RID { I 1 vector } m_axi_image_in_RFIFONUM { I 9 vector } m_axi_image_in_RUSER { I 1 vector } m_axi_image_in_RRESP { I 2 vector } m_axi_image_in_BVALID { I 1 bit } m_axi_image_in_BREADY { O 1 bit } m_axi_image_in_BRESP { I 2 vector } m_axi_image_in_BID { I 1 vector } m_axi_image_in_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name mul_ln7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mul_ln7 \
    op interface \
    ports { mul_ln7 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name padding \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_padding \
    op interface \
    ports { padding { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name kernel_dim \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_dim \
    op interface \
    ports { kernel_dim { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name add_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_0 \
    op interface \
    ports { add_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name rows \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rows \
    op interface \
    ports { rows { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name newRow_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_newRow_2 \
    op interface \
    ports { newRow_2 { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name col \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_col \
    op interface \
    ports { col { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name empty_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_41 \
    op interface \
    ports { empty_41 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name cols \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cols \
    op interface \
    ports { cols { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name image_in_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_image_in_offset \
    op interface \
    ports { image_in_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name kernel_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_offset \
    op interface \
    ports { kernel_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name newCol_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_newCol_2 \
    op interface \
    ports { newCol_2 { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name mul_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mul_i \
    op interface \
    ports { mul_i { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name mul35_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mul35_i \
    op interface \
    ports { mul35_i { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name sum_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_1_out \
    op interface \
    ports { sum_1_out { O 32 vector } sum_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName LinearImageFilter_flow_control_loop_pipe_sequential_init_U
set CompName LinearImageFilter_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix LinearImageFilter_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


