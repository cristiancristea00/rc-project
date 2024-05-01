#include <cstdint>
#include <cmath>


enum class Padding : uint8_t
{
    EDGE,
    REFLECT,
    ZEROS,
};


inline auto Pad(int32_t & row, int32_t & col, uint32_t const matRows, uint32_t const matCols,Padding const padding) -> bool;


auto LinearFilter(float * const image_out, float const * const image_in, uint32_t const rows, uint32_t const cols, float const * const kernel, uint32_t const kernel_size, uint32_t const stride_row, uint32_t const stride_col, Padding const padding) -> void;
