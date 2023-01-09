# 顶层CMakeists文件。

cmake_minimum_required(VERSION 3.2 FATAL_ERROR)

# 该工程的名字，子目录下的CMakeLists都是同一工程，所以只需要在主CMakeLists下定义即可。
project(hello_project)

# SET是用于显示定义变量的。
set(SRC_LIST main.c)                                       


# 这里是cmake默认隐式帮忙定义的..._BINARY_DIR 和 ..._SOURCE_DIR
# message是用于向终端输出信息。
message(STATUS "This is BINARY dir" ${HELLO_BINARY_DIR})   
message(STATUS "This is SOURCE dir" ${HELLO_SOURCE_DIR})   

# 向工程中添加原码存放的目录。
# 添加子目录，cmake会自动到子目录下，继续执行CMakeLists文件。
add_subdirectory(src_main)                                      
add_subdirectory(lib_hello)                                     

# 设置安装目录前缀
# 安装copyright和readme
# 安装shell文件
# CMAKE_CURRENT_LIST_DIR表示，CMakeLists.txt的完整目录。
set(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR})       
install(FILES doc/copyright doc/readme DESTINATION exe/doc)
install(PROGRAMS runhello.sh DESTINATION exe/bin)

#install(DIRECTORY doc/ DESTINATION exe/hello_doc)

# 常用的变量
#PROJECT_SOURCE_DIR：工程的根目录
#PROJECT_BINARY_DIR：运行cmake命令的目录，通常为${PROJECT_SOURCE_DIR}/build
#PROJECT_NAME：返回通过 project 命令定义的项目名称
#CMAKE_CURRENT_SOURCE_DIR：当前处理的 CMakeLists.txt 所在的路径
#CMAKE_CURRENT_BINARY_DIR：target 编译目录
#CMAKE_CURRENT_LIST_DIR：CMakeLists.txt 的完整路径
#EXECUTABLE_OUTPUT_PATH：重新定义目标二进制可执行文件的存放位置
#LIBRARY_OUTPUT_PATH：重新定义目标链接库文件的存放位置 作者：薛定谔的_AI https://www.bilibili.com/read/cv15107407/ 出处：bilibili



