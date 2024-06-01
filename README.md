# Reconfigurable Computing Project – Linear Image Filtering using HLS

This project is a part of the Reconfigurable Computing course at the University of Science and Technology POLITEHNICA Bucharest. The chosen goal of this project is to implement and optimise a linear image filtering algorithm using High-Level Synthesis (HLS) tools. The project is implemented using the Vivado and Vitis tools in the C++ programming language.

## Optimisation Changelog

- **Version 1** – Initial implementation of the project by transforming the reference C++ code into a Vitis project.
- **Version 2** – Implement caching for the input image and the kernel matrix in BRAM memory to reduce the memory access time.
- **Version 3** – Unroll the columns loop in the image processing loops to increase the parallelism of the algorithm.
- **Version 4** – Change the unroll to the rows loop in the image processing loops.

## Results

| Implementation          |   3×3    |   5×5    |    7×7    |    9×9    |   11×11   |
| ----------------------- | :------: | :------: | :-------: | :-------: | :-------: |
| Reference on PC[^1]     |  491 ms  | 1083 ms  |  1974 ms  |  3154 ms  |  4594 ms  |
| Reference on Laptop[^2] |  376 ms  |  696 ms  |  1793 ms  |  2919 ms  |  4050 ms  |
| Reference on RPI 5      |  380 ms  | 1013 ms  |  1978 ms  |  3146 ms  |  4993 ms  |
| Reference on PYNQ-Z2    | 7744 ms  | 19930 ms | 39428 ms  | 63288 ms  | 93335 ms  |
| Version 1 on PYNQ-Z2    | 29158 ms | 61238 ms | 109352 ms | 173334 ms | 252413 ms |
| Version 2 on PYNQ-Z2    | 14131 ms | 22194 ms | 34288 ms  | 50413 ms  | 70568 ms  |
| Version 3 on PYNQ-Z2    | 13830 ms | 21892 ms | 33987 ms  | 50112 ms  | 70266 ms  |
| Version 4 on PYNQ-Z2    | 14132 ms | 22195 ms | 34288 ms  | 50412 ms  | 70568 ms  |

[^1]: Intel® Core™ i5-6600K (4 Cores, 4 Threads, 3.5 GHz - 3.9 GHz, 6 MB Cache)
[^2]: Intel® Core™ i7-9750H (6 Cores, 12 Threads, 2.6 GHz - 4.5 GHz, 12 MB Cache)
