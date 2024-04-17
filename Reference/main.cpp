#include <iostream>

#include <opencv2/opencv.hpp>

#include "Matrix.hpp"


auto LinearFilter(Matrix const & image, Matrix const & kernel, SingleOrPair const & stride = std::size_t{1}) -> Matrix;


auto main() -> int
{
    Matrix image{"../lena.tif"};

    static constexpr float MAX{25.0F};
    Matrix kernel{{1 / MAX, 1 / MAX, 1 / MAX, 1 / MAX, 1 / MAX},
                  {1 / MAX, 1 / MAX, 1 / MAX, 1 / MAX, 1 / MAX},
                  {1 / MAX, 1 / MAX, 1 / MAX, 1 / MAX, 1 / MAX},
                  {1 / MAX, 1 / MAX, 1 / MAX, 1 / MAX, 1 / MAX},
                  {1 / MAX, 1 / MAX, 1 / MAX, 1 / MAX, 1 / MAX}};

    auto const result = LinearFilter(image, kernel, 3U);

    return EXIT_SUCCESS;
}

auto LinearFilter(Matrix const & image, Matrix const & kernel, SingleOrPair const & stride) -> Matrix
{
    Matrix result{image.shape()};

    std::size_t strideRow{1};
    std::size_t strideCol{1};

    if (std::holds_alternative<Pair>(stride))
    {
        strideRow = std::get<Pair>(stride).first;
        strideCol = std::get<Pair>(stride).second;
    }
    else
    {
        strideRow = strideCol = std::get<std::size_t>(stride);
    }

    #pragma omp parallel for
    for (std::size_t row = 0; row < image.rows(); row += strideRow)
    {
        #pragma omp parallel for
        for (std::size_t col = 0; col < image.cols(); col += strideCol)
        {
            float sum{0.0F};

            for (std::size_t i = 0; i < kernel.rows(); ++i)
            {
                for (std::size_t j = 0; j < kernel.cols(); ++j)
                {
                    std::int64_t const imgRow = static_cast<std::int64_t>(row + i) - kernel.rows() / 2;
                    std::int64_t const imgCol = static_cast<std::int64_t>(col + j) - kernel.cols() / 2;

                    if ((imgRow < 0) || (imgRow >= image.rows()) || (imgCol < 0) || (imgCol >= image.cols()))
                    {
                        continue;
                    }

                    sum += image[static_cast<std::size_t>(imgRow), static_cast<std::size_t>(imgCol)] * kernel[i, j];
                }
            }

            result[row, col] = sum;
        }
    }

    return result;
};
