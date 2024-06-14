#include <cstdint>


enum class Padding : uint8_t
{
    EDGE    = 0x01,
    REFLECT = 0x02,
    ZEROS   = 0x04,
};


inline auto Pad(int32_t & row, int32_t & col, uint32_t const matRows, uint32_t const matCols,Padding const padding) -> bool;


auto LinearImageFilter(uint8_t * const image_out, uint8_t const * const image_in, uint32_t const rows, uint32_t const cols, uint8_t const * const kernel, uint32_t const kernel_dim, uint32_t const stride_row, uint32_t const stride_col, Padding const padding) -> void;