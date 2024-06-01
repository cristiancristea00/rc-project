cmake_minimum_required(VERSION 3.22)
project(ReferenceAntique LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)

set(CMAKE_COLOR_DIAGNOSTICS ON)

set(DEBUG_FLAGS "-Og -g -Wfatal-errors -Wpedantic -Wall -Wextra -Wconversion -Wshadow=local -Wdouble-promotion -Wformat=2 -Wformat-overflow=2      \
                 -Wformat-nonliteral -Wformat-security -Wformat-truncation=2 -Wnull-dereference -Wimplicit-fallthrough=3 -Wshift-overflow=2        \
                 -Wswitch-default -Wunused-parameter -Wunused-const-variable=2 -Wstrict-overflow=4 -Wstringop-overflow=3 -Wsuggest-attribute=pure  \
                 -Wsuggest-attribute=const -Wsuggest-attribute=noreturn -Wmissing-noreturn -Wsuggest-attribute=malloc -Wsuggest-attribute=format   \
                 -Wmissing-format-attribute -Wsuggest-attribute=cold -Walloc-zero -Walloca -Wattribute-alias=2 -Wduplicated-branches -Wcast-qual   \
                 -march=native -fsanitize=address,leak,undefined")

set(OPTIMIZED_FLAGS "-g -Ofast -march=native -pipe -fno-builtin")


set(CMAKE_CXX_FLAGS_DEBUG "${DEBUG_FLAGS}")
set(CMAKE_C_FLAGS_DEBUG "${DEBUG_FLAGS}")

set(CMAKE_CXX_FLAGS_RELEASE "${OPTIMIZED_FLAGS}")
set(CMAKE_C_FLAGS_RELEASE "${OPTIMIZED_FLAGS}")

add_executable(ReferenceAntique main.cpp Matrix.cpp)

find_package(OpenCV REQUIRED)
target_link_libraries(ReferenceAntique PRIVATE ${OpenCV_LIBS})
include_directories(${OpenCV_INCLUDE_DIRS})

find_package(OpenMP REQUIRED)
target_link_libraries(ReferenceAntique PRIVATE OpenMP::OpenMP_CXX)
