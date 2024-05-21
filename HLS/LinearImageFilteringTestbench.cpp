#include "LinearImageFiltering.hpp"
#include "Matrix.hpp"

#include <iostream>
#include <vector>


#define FILTER_SIZE    ( 5 )
#define STRIDE         ( 1 )


auto GetMedianFilterKernel(std::size_t const size) -> Matrix;


auto main() -> int
{
    Matrix const image{"../../../../lena.tif"};
    image.show("Original Image");

    auto const kernel = GetMedianFilterKernel(FILTER_SIZE);

    Matrix filteredImage{image.rows(), image.cols()};

    LinearImageFilter(filteredImage.storage(), image.storage(), image.rows(), image.cols(), kernel.storage(), FILTER_SIZE, STRIDE, STRIDE, Padding::ZEROS);

    filteredImage.show("Filtered Image");

    cv::waitKey(0);

    return 0;
}


auto GetMedianFilterKernel(std::size_t const size) -> Matrix
{
    if (size % 2 == 0)
    {
        throw std::invalid_argument{"The size of the kernel must be an odd number."};
    }

    return Matrix{size, size, 1.0F / static_cast<float>(size * size)};
}