# Reconfigurable Computing Project – Linear Image Filtering using HLS

This project is a part of the Reconfigurable Computing course at the University of Science and Technology POLITEHNICA Bucharest. The chosen goal of this project is to implement and optimise a linear image filtering algorithm using High-Level Synthesis (HLS) tools. The project is implemented using the Vivado and Vitis tools in the C++ programming language.

## Optimisation Changelog

- **Version 1** – Initial implementation of the project by transforming the reference C++ code into a Vitis project.
- **Version 2** – Implement caching for the input image and the kernel matrix in BRAM memory to reduce the memory access time.