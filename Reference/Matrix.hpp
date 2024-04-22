#pragma once

#include <opencv2/opencv.hpp>

#include "Types.hpp"


class Matrix final
{
public:
    explicit Matrix(std::string_view const fileName);
    Matrix(std::size_t const rows, std::size_t const cols);
    Matrix(std::initializer_list<std::initializer_list<float>> const & init);

    [[nodiscard]] constexpr auto get() const -> cv::Mat const & { return data; }

    [[nodiscard]] constexpr auto rows() const -> std::size_t { return static_cast<std::size_t>(data.rows); }

    [[nodiscard]] constexpr auto cols() const -> std::size_t { return static_cast<std::size_t>(data.cols); }

    constexpr auto operator[](std::size_t const row, std::size_t const col) -> float & { return data.at<float>(static_cast<int>(row), static_cast<int>(col)); }

    constexpr auto operator[](std::size_t const row, std::size_t const col) const -> float const & { return data.at<float>(static_cast<int>(row), static_cast<int>(col)); }

private:
    cv::Mat data;
};

