#pragma once

#include <opencv2/opencv.hpp>

#include "Types.hpp"


class Matrix
{
public:
    explicit Matrix(std::string_view const fileName);
    explicit Matrix(Pair const & shape);
    Matrix(std::initializer_list<std::initializer_list<float>> const & init);

    [[nodiscard]] [[gnu::pure]] auto get() const -> cv::Mat const &;

    [[nodiscard]] [[gnu::pure]] auto rows() const -> std::size_t;
    [[nodiscard]] [[gnu::pure]] auto cols() const -> std::size_t;
    [[nodiscard]] [[gnu::pure]] auto shape() const -> Pair;

    auto operator[](std::size_t const row, std::size_t const col) -> float &;
    auto operator[](std::size_t const row, std::size_t const col) const -> float const &;

private:
    cv::Mat data;
};

