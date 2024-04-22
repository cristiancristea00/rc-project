#pragma once

#include <opencv2/opencv.hpp>

#include "Types.hpp"


class Matrix final
{
public:
    explicit Matrix(std::string_view const fileName);
    Matrix(std::size_t const rows, std::size_t const cols);
    Matrix(std::initializer_list<std::initializer_list<float>> const & init);

    [[nodiscard]] [[gnu::const]] auto get() const -> cv::Mat const &;

    [[nodiscard]] [[gnu::pure]] auto rows() const -> std::size_t;
    [[nodiscard]] [[gnu::pure]] auto cols() const -> std::size_t;
    [[nodiscard]] [[gnu::pure]] auto shape() const -> Pair;

    [[gnu::pure]] auto operator[](std::size_t const row, std::size_t const col) -> float &;
    [[gnu::pure]] auto operator[](std::size_t const row, std::size_t const col) const -> float const &;

private:
    cv::Mat data;
};

