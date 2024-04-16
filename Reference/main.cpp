#include <iostream>

#include <opencv2/opencv.hpp>

#include "Matrix.hpp"


using PairOrSingle = std::variant<std::pair<std::size_t, std::size_t>, std::size_t>;

auto LinearFilter(Matrix const & image, Matrix const & kernel, PairOrSingle const & stride = std::size_t{1}, bool const padding = true) -> Matrix;


auto main() -> int
{
    std::cout << "Linear Image Filtering\n";

    Matrix image{"../lena.tif"};
    cv::imshow("Original Image", image.get());

    Matrix kernel{3, 3};

    auto const result = LinearFilter(image, kernel);
    cv::imshow("Filtered Image", result.get());

    cv::waitKey(0);

    return EXIT_SUCCESS;
}

auto LinearFilter(Matrix const & image, Matrix const & kernel, PairOrSingle const & stride, bool const padding) -> Matrix
{
    Matrix result{image.shape()};

    return result;
};
