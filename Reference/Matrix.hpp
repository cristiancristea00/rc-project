#pragma once

#include <opencv2/opencv.hpp>


class Matrix final
{
public:
    explicit Matrix(std::string_view const fileName);

    Matrix(std::size_t const rows, std::size_t const cols, float const value = 0.0F);

    Matrix(std::initializer_list<std::initializer_list<float>> const & init);

    constexpr auto show(std::string_view const title) const -> void
    {
        cv::Mat const image{static_cast<int>(imageRows), static_cast<int>(imageCols), CV_32F, const_cast<float *>(data.data())};
        cv::Mat convertedImage;
        image.convertTo(convertedImage, CV_8U, MAX_VALUE);

        imshow(title.data(), convertedImage);
    }

    constexpr auto save(std::string_view const fileName) const -> void
    {
        cv::Mat const image{static_cast<int>(imageRows), static_cast<int>(imageCols), CV_32F, const_cast<float *>(data.data())};
        cv::Mat convertedImage;
        image.convertTo(convertedImage, CV_8U, MAX_VALUE);

        cv::imwrite(fileName.data(), convertedImage);
    }

    [[nodiscard]] constexpr auto rows() const noexcept -> std::size_t
    {
        return imageRows;
    }

    [[nodiscard]] constexpr auto cols() const noexcept -> std::size_t
    {
        return imageCols;
    }

    constexpr auto operator[](std::size_t const row, std::size_t const col) noexcept -> float &
    {
        return data[row * imageCols + col];
    }

    constexpr auto operator[](std::size_t const row, std::size_t const col) const noexcept -> float
    {
        return data[row * imageCols + col];
    }

private:
    static constexpr float MAX_VALUE{255.0F};
    static constexpr float SCALE_FACTOR{1.0F / MAX_VALUE};

    std::vector<float> data;
    std::size_t imageRows;
    std::size_t imageCols;
};
