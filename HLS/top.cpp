#include <cstdint>

void LinearContrastStretching(
    uint32_t *const image_out,
    uint32_t const *const image_in,
    uint32_t const image_length,
    uint32_t const low_threshold,
    uint32_t const high_threshold,
    uint32_t const low_new_threshold,
    uint32_t const high_new_threshold,
    uint32_t const max_value)
{
#pragma HLS INTERFACE mode = m_axi port = image_out bundle = image_out offset = slave
#pragma HLS INTERFACE mode = m_axi port = image_in bundle = image_in offset = slave
#pragma HLS INTERFACE mode = s_axilite port = image_length
#pragma HLS INTERFACE mode = s_axilite port = low_threshold
#pragma HLS INTERFACE mode = s_axilite port = high_threshold
#pragma HLS INTERFACE mode = s_axilite port = low_new_threshold
#pragma HLS INTERFACE mode = s_axilite port = high_new_threshold
#pragma HLS INTERFACE mode = s_axilite port = max_value
#pragma HLS INTERFACE mode = s_axilite port = return

    for (uint32_t idx = 0; idx < image_length; ++idx)
    {
        if (image_in[idx] < low_threshold)
        {
            image_out[idx] = image_in[idx] * low_new_threshold / low_threshold;
        }
        else if (image_in[idx] > high_threshold)
        {
            image_out[idx] = high_new_threshold + (image_in[idx] - high_threshold) * (max_value - high_new_threshold) / (max_value - high_threshold);
        }
        else
        {
            image_out[idx] = low_new_threshold + (image_in[idx] - low_threshold) * (high_new_threshold - low_new_threshold) / (high_threshold - low_threshold);
        }
    }
}
