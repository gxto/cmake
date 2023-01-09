# 其中PROJECT_SOURCE_DIR就是顶层CMakeLists.txt的目录。
# 添加库的路径
include_directories($(PROJECT_SOURCE_DIR)/lib_hello)
# 生成可执行文件
add_executable(hello main.c)
# 制定可执行文件所依赖的库
target_link_libraries(hello libhello)

