#pragma once

#include <opencv2/opencv.hpp>


class Matrix final
{
public:
    explicit Matrix(std::string_view const fileName);

    Matrix(std::size_t const rows, std::size_t const cols, uint8_t const value = 0);

    Matrix(std::initializer_list<std::initializer_list<uint8_t>> const & init);

    auto show(std::string_view const title) const -> void
    {
        cv::Mat const image{static_cast<int>(imageRows), static_cast<int>(imageCols), CV_8U, const_cast<uint8_t *>(data.data())};

        imshow(title.data(), image);
    }

    auto save(std::string_view const fileName) const -> void
    {
        cv::Mat const image{static_cast<int>(imageRows), static_cast<int>(imageCols), CV_8U, const_cast<uint8_t *>(data.data())};

        cv::imwrite(fileName.data(), image);
    }

    [[nodiscard]] auto storage() const noexcept -> uint8_t const *
    {
        return data.data();
    }

    [[nodiscard]] auto storage() noexcept -> uint8_t *
    {
        return data.data();
    }

    [[nodiscard]] constexpr auto rows() const noexcept -> std::size_t
    {
        return imageRows;
    }

    [[nodiscard]] constexpr auto cols() const noexcept -> std::size_t
    {
        return imageCols;
    }

    auto operator()(std::size_t const row, std::size_t const col) noexcept -> uint8_t &
    {
        return data[row * imageCols + col];
    }

    auto operator()(std::size_t const row, std::size_t const col) const noexcept -> uint8_t
    {
        return data[row * imageCols + col];
    }

private:
    std::vector<uint8_t> data;
    std::size_t imageRows;
    std::size_t imageCols;
};
