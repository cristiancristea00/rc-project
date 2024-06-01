#include <iostream>
#include <thread>
#include <optional>

#include <omp.h>
#include <opencv2/opencv.hpp>

#include "Matrix.hpp"
#include "Types.hpp"


#define NUM_THREADS     ( std::thread::hardware_concurrency() )

#define STRIDE          ( 1U )


enum class Padding : std::uint8_t
{
    EDGE    = 0x01,
    REFLECT = 0x02,
    ZEROS   = 0x04,
};


auto LinearFilter(Matrix const & image, Matrix const & kernel, SingleOrPair const & stride = 1U, Padding const & padding = Padding::REFLECT) -> Matrix;

inline auto Pad(std::int64_t const row, std::int64_t const col, std::size_t const matRows, std::size_t const matCols, Padding const & padding)
    -> std::optional<std::pair<std::int64_t const, std::int64_t const>>;

auto GetMedianFilterKernel(std::size_t const size) -> Matrix;

auto MeasureTime(std::function<void()> const & function, std::string_view const message) -> void;


auto main(int argc, char * argv[]) -> int
{
    if (argc != 2)
    {
        std::cerr << "Usage: " << argv[0] << " <image_path>\n";
        return EXIT_FAILURE;
    }

    omp_set_num_threads(NUM_THREADS);
    std::cout << "Linear Image Filtering with " << NUM_THREADS << "\n";

    Matrix const image{argv[1]};
    std::cout << "Image size: " << image.rows() << "x" << image.cols() << "\n";

    constexpr auto KERNEL_SIZES = std::to_array<std::size_t>({3, 5, 7, 9, 11});

    for (auto const size : KERNEL_SIZES)
    {
        auto const kernel = GetMedianFilterKernel(size);

        std::ostringstream message;
        message << "Linear Filter with kernel size " << size << "x" << size;

        MeasureTime(
            [&] -> void
            {
                auto const result = LinearFilter(image, kernel, STRIDE, Padding::REFLECT);
            }, message.str()
        );
    }

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

    auto const imgRows{image.rows()};
    auto const imgCols{image.cols()};

    auto const kerRows{kernel.rows()};
    auto const kerCols{kernel.cols()};

    Matrix result{imgRows / strideRow + 1, imgCols / strideCol + 1};

    #pragma omp parallel for
    for (std::size_t row = 0; row < imgRows; row += strideRow)
    {
        for (std::size_t col = 0; col < imgCols; col += strideCol)
        {
            float sum{0.0F};

            for (std::size_t i = 0; i < kerRows; ++i)
            {
                for (std::size_t j = 0; j < kerCols; ++j)
                {
                    std::int64_t imgRow = static_cast<std::int64_t>(row + i) - kerRows / 2;
                    std::int64_t imgCol = static_cast<std::int64_t>(col + j) - kerCols / 2;

                    if (auto const padded = Pad(imgRow, imgCol, imgRows, imgCols, padding); padded.has_value())
                    {
                        imgRow = padded->first;
                        imgCol = padded->second;
                    }
                    else
                    {
                        continue;
                    }

                    sum += image(static_cast<std::size_t>(imgRow), static_cast<std::size_t>(imgCol)) * kernel(i, j);
                }
            }

            result(row / strideRow, col / strideCol) = sum;
        }
    }

    return result;
};

inline auto Pad(std::int64_t const row, std::int64_t const col, std::size_t const matRows, std::size_t const matCols, Padding const & padding)
    -> std::optional<std::pair<std::int64_t const, std::int64_t const>>
{
    static auto const leftBound = [](std::int64_t const & value) -> bool
    {
        return std::cmp_less(value, 0);
    };
    static auto const rightBound = [&](std::int64_t const & value) -> bool
    {
        return std::cmp_greater_equal(value, matRows);
    };
    static auto const topBound = [](std::int64_t const & value) -> bool
    {
        return std::cmp_less(value, 0);
    };
    static auto const bottomBound = [&](std::int64_t const & value) -> bool
    {
        return std::cmp_greater_equal(value, matCols);
    };

    std::int64_t imgRow{row};
    std::int64_t imgCol{col};

    if (leftBound(row) || rightBound(row) || topBound(col) || bottomBound(col))
    {
        switch (padding)
        {
            case Padding::EDGE :
                if (leftBound(row))
                {
                    imgRow = 0;
                }
                if (rightBound(row))
                {
                    imgRow = matRows - 1;
                }
                if (topBound(col))
                {
                    imgCol = 0;
                }
                if (bottomBound(col))
                {
                    imgCol = matCols - 1;
                }
                break;
            case Padding::REFLECT :
                if (leftBound(row))
                {
                    imgRow = std::abs(row) - 1;
                }
                if (rightBound(row))
                {
                    imgRow = 2 * matRows - row - 1;
                }
                if (topBound(col))
                {
                    imgCol = std::abs(col) - 1;
                }
                if (bottomBound(col))
                {
                    imgCol = 2 * matCols - col - 1;
                }
                break;
            case Padding::ZEROS :
            default :
                return std::nullopt;
        }
    }

    return std::make_pair(imgRow, imgCol);
}

auto GetMedianFilterKernel(std::size_t const size) -> Matrix
{
    if (size % 2 == 0)
    {
        std::ostringstream error;
        error << "Kernel size must be odd. " << size << " is even.";
        throw std::invalid_argument{error.str()};
    }

    return Matrix{size, size, 1.0F / static_cast<float>(size * size)};
}

auto MeasureTime(std::function<void()> const & function, std::string_view const message) -> void
{
    auto const start = std::chrono::high_resolution_clock::now();
    function();
    auto const stop = std::chrono::high_resolution_clock::now();
    auto const difference_ms = duration_cast<std::chrono::milliseconds>(stop - start);
    auto const time_ms = difference_ms.count();
    std::cout << message << ": " << time_ms << " ms\n";
}
