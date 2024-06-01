#include "Matrix.hpp"

#include <ranges>


Matrix::Matrix(std::string_view const fileName)
{
    auto const image = imread(fileName.data(), cv::IMREAD_GRAYSCALE);
    cv::Mat convertedImage;
    image.convertTo(convertedImage, CV_32F, SCALE_FACTOR);

    imageRows = convertedImage.rows;
    imageCols = convertedImage.cols;

    data.resize(imageRows * imageCols);
    data.assign(convertedImage.begin<float>(), convertedImage.end<float>());
}

Matrix::Matrix(std::size_t const rows, std::size_t const cols, float const value) : data(rows * cols, value), imageRows{rows}, imageCols{cols} { }

Matrix::Matrix(std::initializer_list<std::initializer_list<float>> const & init): imageRows{init.size()}, imageCols{init.begin()->size()}
{
    for (std::size_t idx = 0; auto const & row : init)
    {
        if (row.size() != imageCols)
        {
            std::ostringstream error;
            error << "Input matrix is ragged. Row " << idx << " has " << row.size() << " columns, but the first row has " << imageCols << " columns.";
            throw std::invalid_argument{error.str()};
        }

        ++idx;
    }

    data.reserve(imageRows * imageCols);

    for (auto const & row : init)
    {
        data.insert(data.end(), row.begin(), row.end());
    }
}
