#include <iostream>
#include <thread>

#include <opencv2/opencv.hpp>
#include <omp.h>


#define NUM_THREADS     ( std::thread::hardware_concurrency() )


#include "Matrix.hpp"


enum class Padding : std::uint8_t
{
    ZEROS,
    REFLECT,
};


auto LinearFilter(Matrix const & image, Matrix const & kernel, SingleOrPair const & stride = 1U, Padding const & padding = Padding::REFLECT) -> Matrix;
auto Pad(std::int64_t const row, std::int64_t const col, std::size_t const matRows, std::size_t const matCols, Padding const & padding)
-> std::optional<std::pair<std::int64_t const, std::int64_t const>>;


auto main(int argc, char * argv[]) -> int
{
    if (argc != 2)
    {
        std::cerr << std::format("Usage: {} <image_path>\n", argv[0]);
        return EXIT_FAILURE;
    }

    omp_set_num_threads(NUM_THREADS);

    Matrix image{argv[1]};

    static constexpr float MAX{25.0F};
    Matrix kernel{{1 / MAX, 1 / MAX, 1 / MAX, 1 / MAX, 1 / MAX},
                  {1 / MAX, 1 / MAX, 1 / MAX, 1 / MAX, 1 / MAX},
                  {1 / MAX, 1 / MAX, 1 / MAX, 1 / MAX, 1 / MAX},
                  {1 / MAX, 1 / MAX, 1 / MAX, 1 / MAX, 1 / MAX},
                  {1 / MAX, 1 / MAX, 1 / MAX, 1 / MAX, 1 / MAX}};

    auto const result = LinearFilter(image, kernel);

    return EXIT_SUCCESS;
}

auto LinearFilter(Matrix const & image, Matrix const & kernel, SingleOrPair const & stride, Padding const & padding) -> Matrix
{
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

    Matrix result{image.rows() / strideRow + 1, image.cols() / strideCol + 1};

    #pragma omp parallel for
    for (std::size_t row = 0; row < image.rows(); row += strideRow)
    {
        for (std::size_t col = 0; col < image.cols(); col += strideCol)
        {
            float sum{0.0F};

            for (std::size_t i = 0; i < kernel.rows(); ++i)
            {
                for (std::size_t j = 0; j < kernel.cols(); ++j)
                {
                    std::int64_t imgRow = static_cast<std::int64_t>(row + i) - kernel.rows() / 2;
                    std::int64_t imgCol = static_cast<std::int64_t>(col + j) - kernel.cols() / 2;

                    auto const padded = Pad(imgRow, imgCol, image.rows(), image.cols(), padding);

                    if (padded.has_value())
                    {
                        imgRow = padded->first;
                        imgCol = padded->second;
                    }
                    else
                    {
                        continue;
                    }

                    sum += image[static_cast<std::size_t>(imgRow), static_cast<std::size_t>(imgCol)] * kernel[i, j];
                }
            }

            result[row / strideRow, col / strideCol] = sum;
        }
    }

    return result;
};

auto Pad(std::int64_t const row, std::int64_t const col, std::size_t const matRows, std::size_t const matCols,
         Padding const & padding) -> std::optional<std::pair<std::int64_t const, std::int64_t const>>
{
    static auto const leftBound = [](std::int64_t const & value) -> bool { return std::cmp_less(value, 0); };
    static auto const rightBound = [&](std::int64_t const & value) -> bool { return std::cmp_greater_equal(value, matRows); };
    static auto const topBound = [](std::int64_t const & value) -> bool { return std::cmp_less(value, 0); };
    static auto const bottomBound = [&](std::int64_t const & value) -> bool { return std::cmp_greater_equal(value, matCols); };

    std::int64_t imgRow{row};
    std::int64_t imgCol{col};

    if (leftBound(row) || rightBound(row) || topBound(col) || bottomBound(col))
    {
        if (padding == Padding::REFLECT)
        {
            if (leftBound(row))
            {
                imgRow = std::abs(row) - 1;
            }
            else if (rightBound(row))
            {
                imgRow = 2 * matRows - row - 1;
            }
            else if (topBound(col))
            {
                imgCol = std::abs(col) - 1;
            }
            else if (bottomBound(col))
            {
                imgCol = 2 * matCols - col - 1;
            }
        }

        return std::nullopt;
    }

    return std::make_pair(imgRow, imgCol);
}