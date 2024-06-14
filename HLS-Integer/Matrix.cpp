#include "Matrix.hpp"


Matrix::Matrix(std::string_view const fileName)
{
    auto const image = imread(fileName.data(), cv::IMREAD_GRAYSCALE);

    imageRows = image.rows;
    imageCols = image.cols;

    data.resize(imageRows * imageCols);
    data.assign(image.begin<uint8_t>(), image.end<uint8_t>());
}

Matrix::Matrix(std::size_t const rows, std::size_t const cols, uint8_t const value) : data(rows * cols, value), imageRows{rows}, imageCols{cols} { }

Matrix::Matrix(std::initializer_list<std::initializer_list<uint8_t>> const & init): imageRows{init.size()}, imageCols{init.begin()->size()}
{
    data.reserve(imageRows * imageCols);

    for (auto const & row : init)
    {
        data.insert(data.end(), row.begin(), row.end());
    }
}
