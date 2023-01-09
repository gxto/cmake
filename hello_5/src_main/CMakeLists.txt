#  这个是src_main目录下的CMakeLists文件 ，main.c 也在此处


#  添加库路径
#  PROJECT_SOURCE_DIR，工程的根目录
include_directories(${PROJECT_SOURCE_DIR}/lib_hello)


#  定义生成可执行文件名 hello_demo
add_executable(hello_demo main.c)

#  换个地方保存二进制文件
#  set执行重新定制 cmake的内部变量 EXECUTABLE_OUTPUT_PATH 和 LIBRARY_OUTPUT_PATH变量来制定最终二进制的位置。
#  这条语句，要添加在ADD_EXECUTABEL()和ADD_LIBRARY()一起。
#  PROJECT_BINARY_DIR，运行cmake的目录
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)
message(STATUS "This is project_binary_dir dir" ${PROJECT_BINARY_DIR}) 

#  输出可执行文件到 ubuntu 下的 /usr/bin 目录。该目录主要存储执行文件。
install(TARGETS hello_demo RUNTIME DESTINATION /usr/bin)

# 连接hello的库,动态库
target_link_libraries(hello_demo hello)
