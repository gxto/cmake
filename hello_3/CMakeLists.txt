#  cmake版本
cmake_minimum_required(VERSION 3.5)
#  工程名字
project(HELLO)
#  添加子目录（字CMakeLists.txt的目录）
add_subdirectory(lib_hello)  # 参数是lib_hello文件夹
add_subdirectory(src_main)   # 参数是src_main文件夹

