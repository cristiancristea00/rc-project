# Reconfigurable Computing Project – Linear Image Filtering using HLS

This project is a part of the Reconfigurable Computing course at the University of Science and Technology POLITEHNICA Bucharest. The chosen goal of this project is to implement and optimise a linear image filtering algorithm using High-Level Synthesis (HLS) tools. The project is implemented using the Vivado and Vitis tools in the C++ programming language.

## Optimisation Changelog

- **Version 1** – Initial implementation of the project by transforming the reference C++ code into a Vitis project.
- **Version 2** – Implement caching for the input image and the kernel matrix in BRAM memory to reduce the memory access time.
- **Version 3** – Unroll the columns loop in the image processing loops to increase the parallelism of the algorithm.
- **Version 4** – Change the unroll to the rows loop in the image processing loops.
- **Version 5** – Change the input image cache to have shorter lines and more of them, reduce the unroll factor, and pipeline the padding function instead of inlining it.

## Results

| Implementation          |       3×3 |       5×5 |        7×7 |        9×9 |      11×11 |
| ----------------------- | --------: | --------: | ---------: | ---------: | ---------: |
| Reference on PC[^1]     |    491 ms |  1 083 ms |   1 974 ms |   3 154 ms |   4 594 ms |
| Reference on Laptop[^2] |    376 ms |    696 ms |   1 793 ms |   2 919 ms |   4 050 ms |
| Reference on RPI 5      |    380 ms |  1 013 ms |   1 978 ms |   3 146 ms |   4 993 ms |
| Reference on PYNQ-Z2    |  7 744 ms | 19 930 ms |  39 428 ms |  63 288 ms |  93 335 ms |
| Version 1 on PYNQ-Z2    | 29 158 ms | 61 238 ms | 109 352 ms | 173 334 ms | 252 413 ms |
| Version 2 on PYNQ-Z2    | 14 131 ms | 22 194 ms |  34 288 ms |  50 413 ms |  70 568 ms |
| Version 3 on PYNQ-Z2    | 13 830 ms | 21 892 ms |  33 987 ms |  50 112 ms |  70 266 ms |
| Version 4 on PYNQ-Z2    | 14 132 ms | 22 195 ms |  34 288 ms |  50 412 ms |  70 568 ms |
| Version 5 on PYNQ-Z2    | 14 204 ms | 22 266 ms |  34 359 ms |  50 859 ms |  71 398 ms |

[^1]: Intel® Core™ i5-6600K (4 Cores, 4 Threads, 3.5 GHz - 3.9 GHz, 6 MB Cache)
[^2]: Intel® Core™ i7-9750H (6 Cores, 12 Threads, 2.6 GHz - 4.5 GHz, 12 MB Cache)
