# 设置可执行文件生成的文件夹（这个文件夹名字可以自己设立 out_bin）
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/out_bin)
# 其中PROJECT_SOURCE_DIR就是顶层CMakeLists.txt的目录。
# 添加库的路径
include_directories($(PROJECT_SOURCE_DIR)/lib_hello)
# 生成可执行文件
add_executable(hello main.c)
# 制定可执行文件所依赖的库
target_link_libraries(hello libhello)

