#pragma once

#include <opencv2/opencv.hpp>


class Matrix
{
public:
    explicit Matrix(std::string_view const fileName);
    explicit Matrix(std::pair<std::size_t const, std::size_t const> const shape);
    Matrix(std::size_t const rows, std::size_t const cols);

    [[nodiscard]] [[gnu::const]] auto get() const -> cv::Mat const &;

    auto rows() const -> std::size_t;
    auto cols() const -> std::size_t;
    auto shape() const -> std::pair<std::size_t const, std::size_t const>;

    auto operator[](std::size_t const row, std::size_t const col) -> float &;
    auto operator[](std::size_t const row, std::size_t const col) const -> float const &;

private:
    cv::Mat data;
};

