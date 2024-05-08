set SynModuleInfo {
  {SRCNAME LinearImageFilter_Pipeline_ker_rows_loop_ker_cols_loop MODELNAME LinearImageFilter_Pipeline_ker_rows_loop_ker_cols_loop RTLNAME LinearImageFilter_LinearImageFilter_Pipeline_ker_rows_loop_ker_cols_loop
    SUBMODULES {
      {MODELNAME LinearImageFilter_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME LinearImageFilter_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME LinearImageFilter_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME LinearImageFilter_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME LinearImageFilter_mul_30s_30s_30_2_1 RTLNAME LinearImageFilter_mul_30s_30s_30_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME LinearImageFilter_flow_control_loop_pipe_sequential_init RTLNAME LinearImageFilter_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME LinearImageFilter_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME LinearImageFilter MODELNAME LinearImageFilter RTLNAME LinearImageFilter IS_TOP 1
    SUBMODULES {
      {MODELNAME LinearImageFilter_mul_32ns_32ns_64_2_1 RTLNAME LinearImageFilter_mul_32ns_32ns_64_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME LinearImageFilter_mul_32s_32s_32_2_1 RTLNAME LinearImageFilter_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME LinearImageFilter_udiv_32ns_32ns_32_36_seq_1 RTLNAME LinearImageFilter_udiv_32ns_32ns_32_36_seq_1 BINDTYPE op TYPE udiv IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME LinearImageFilter_udiv_32ns_32ns_30_36_seq_1 RTLNAME LinearImageFilter_udiv_32ns_32ns_30_36_seq_1 BINDTYPE op TYPE udiv IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME LinearImageFilter_image_out_m_axi RTLNAME LinearImageFilter_image_out_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME LinearImageFilter_image_in_m_axi RTLNAME LinearImageFilter_image_in_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME LinearImageFilter_kernel_m_axi RTLNAME LinearImageFilter_kernel_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME LinearImageFilter_control_s_axi RTLNAME LinearImageFilter_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
