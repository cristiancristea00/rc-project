#include "Matrix.hpp"

#define SCALE_FACTOR     ( 1.0 / 255.0 )


Matrix::Matrix(std::string_view const fileName)
{
    auto const image = cv::imread(std::string{fileName}, cv::IMREAD_GRAYSCALE);
    image.convertTo(data, CV_32F, SCALE_FACTOR);
}

Matrix::Matrix(std::pair<std::size_t const, std::size_t const> const shape) : data{std::move(cv::Mat::zeros(static_cast<int>(shape.first), static_cast<int>(shape.second), CV_32F))} { }

Matrix::Matrix(std::size_t const rows, std::size_t const cols) : data{std::move(cv::Mat::zeros(static_cast<int>(rows), static_cast<int>(cols), CV_32F))} { }

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

auto Matrix::shape() const -> std::pair<std::size_t const, std::size_t const>
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
