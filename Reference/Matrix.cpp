#include "Matrix.hpp"

#define SCALE_FACTOR     ( 1.0F / 255.0F )


Matrix::Matrix(std::string_view const fileName)
{
    auto const image = cv::imread(fileName.data(), cv::IMREAD_GRAYSCALE);
    image.convertTo(data, CV_32F, SCALE_FACTOR);
}

Matrix::Matrix(Pair const & shape) : data{std::move(cv::Mat::zeros(static_cast<int>(shape.first), static_cast<int>(shape.second), CV_32F))} { }

Matrix::Matrix(std::initializer_list<std::initializer_list<float>> const & init)
{
    std::size_t const rows = init.size();
    std::size_t const cols = init.begin()->size();

    data = cv::Mat::zeros(static_cast<int>(rows), static_cast<int>(cols), CV_32F);

    std::size_t rowIdx{0};
    for (auto const & row: init)
    {
        std::size_t colIdx{0};
        for (auto const & elem: row)
        {
            data.at<float>(static_cast<int>(rowIdx), static_cast<int>(colIdx)) = elem;
            ++colIdx;
        }
        ++rowIdx;
    }
}


auto Matrix::get() const -> cv::Mat const &
{
    return data;
}

auto Matrix::rows() const -> std::size_t
{
    return static_cast<std::size_t>(data.rows);
}

auto Matrix::cols() const -> std::size_t
{
    return static_cast<std::size_t>(data.cols);
}

auto Matrix::shape() const -> Pair
{
    return {rows(), cols()};
}

auto Matrix::operator[](std::size_t const row, std::size_t const col) -> float &
{
    return data.at<float>(static_cast<int>(row), static_cast<int>(col));
}

auto Matrix::operator[](std::size_t const row, std::size_t const col) const -> float const &
{
    return data.at<float>(static_cast<int>(row), static_cast<int>(col));
}