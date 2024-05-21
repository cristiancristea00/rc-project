set SynModuleInfo {
  {SRCNAME LinearImageFilter_Pipeline_ker_rows_ker_cols MODELNAME LinearImageFilter_Pipeline_ker_rows_ker_cols RTLNAME LinearImageFilter_LinearImageFilter_Pipeline_ker_rows_ker_cols
    SUBMODULES {
      {MODELNAME LinearImageFilter_fadd_32ns_32ns_32_8_full_dsp_1 RTLNAME LinearImageFilter_fadd_32ns_32ns_32_8_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME LinearImageFilter_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME LinearImageFilter_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME LinearImageFilter_mul_30s_30s_30_3_1 RTLNAME LinearImageFilter_mul_30s_30s_30_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME LinearImageFilter_flow_control_loop_pipe_sequential_init RTLNAME LinearImageFilter_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME LinearImageFilter_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME LinearImageFilter MODELNAME LinearImageFilter RTLNAME LinearImageFilter IS_TOP 1
    SUBMODULES {
      {MODELNAME LinearImageFilter_mul_32ns_32ns_64_3_1 RTLNAME LinearImageFilter_mul_32ns_32ns_64_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME LinearImageFilter_mul_32s_32s_32_3_1 RTLNAME LinearImageFilter_mul_32s_32s_32_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME LinearImageFilter_udiv_32ns_32ns_30_36_seq_1 RTLNAME LinearImageFilter_udiv_32ns_32ns_30_36_seq_1 BINDTYPE op TYPE udiv IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME LinearImageFilter_udiv_32ns_32s_30_36_seq_1 RTLNAME LinearImageFilter_udiv_32ns_32s_30_36_seq_1 BINDTYPE op TYPE udiv IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME LinearImageFilter_image_out_m_axi RTLNAME LinearImageFilter_image_out_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME LinearImageFilter_image_in_m_axi RTLNAME LinearImageFilter_image_in_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME LinearImageFilter_kernel_m_axi RTLNAME LinearImageFilter_kernel_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME LinearImageFilter_control_s_axi RTLNAME LinearImageFilter_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
