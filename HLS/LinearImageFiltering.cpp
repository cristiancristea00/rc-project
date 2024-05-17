#include <cstdint>
#include <cmath>

#include "LinearImageFiltering.hpp"


auto LinearImageFilter(float * const image_out, float const * const image_in, uint32_t const rows, uint32_t const cols, float const * const kernel, uint32_t const kernel_size, uint32_t const stride_row, uint32_t const stride_col, Padding const padding) -> void
{
    #pragma HLS INTERFACE mode = m_axi     port = image_out bundle = image_out offset = slave depth = 25000000
    #pragma HLS INTERFACE mode = m_axi     port = image_in  bundle = image_in  offset = slave depth = 25000000
    #pragma HLS INTERFACE mode = m_axi     port = kernel    bundle = kernel    offset = slave depth = 200

    #pragma HLS INTERFACE mode = s_axilite port = rows
    #pragma HLS INTERFACE mode = s_axilite port = cols
    #pragma HLS INTERFACE mode = s_axilite port = kernel_size
    #pragma HLS INTERFACE mode = s_axilite port = stride_row
    #pragma HLS INTERFACE mode = s_axilite port = stride_col
    #pragma HLS INTERFACE mode = s_axilite port = padding
    #pragma HLS INTERFACE mode = s_axilite port = return

    img_rows: for (uint32_t row = 0; row < rows; row += stride_row)
    {
        img_cols: for (uint32_t col = 0; col < cols; col += stride_col)
        {
            float sum{0.0F};

            ker_rows: for (uint32_t i = 0; i < kernel_size; ++i)
            {
                ker_cols: for (uint32_t j = 0; j < kernel_size; ++j)
                {
                    int32_t newRow = row + i - kernel_size / 2;
                    int32_t newCol = col + j - kernel_size / 2;

                    if (Pad(newRow, newCol, rows, cols, padding))
                    {
                        continue;
                    }

                    sum += image_in[newRow * cols + newCol] * kernel[i * kernel_size + j];
                }
            }

            image_out[row / stride_row * cols / stride_col + col / stride_col] = sum;
        }
    }
};

inline auto Pad(int32_t & row, int32_t & col, uint32_t const matRows, uint32_t const matCols, Padding const padding) -> bool
{
    if ((row < 0) || (row >= matRows) || (col < 0) || (col >= matCols))
    {
        switch (padding)
        {
            case Padding::EDGE:
                if (row < 0)
                {
                    row = 0;
                }
                if (row >= matRows)
                {
                    row = matRows - 1;
                }
                if (col < 0)
                {
                    col = 0;
                }
                if (col >= matCols)
                {
                    col = matCols - 1;
                }
                break;
            case Padding::REFLECT:
                if (row < 0)
                {
                    row = abs(row) - 1;
                }
                if (row >= matRows)
                {
                    row = 2 * matRows - row - 1;
                }
                if (col < 0)
                {
                    col = abs(col) - 1;
                }
                if (col >= matCols)
                {
                    col = 2 * matCols - col - 1;
                }
                break;
            case Padding::ZEROS:
            default:
                return true;
        }
    }

    return false;
}