# lib_hello 文件夹下的 CMakeLists 文档


set(LIBHELLO_SRC hello.c)
# 构建动态库
add_library(hello SHARED ${LIBHELLO_SRC})    
# 构建静态库     
add_library(hello_static STATIC ${LIBHELLO_SRC})  

# 修改静态库的名字
set_target_properties(hello_static PROPERTIES OUTPUT_NAME "hello") 

# 为了让动态库和静态库能够共同存在 libhello.so  libhello.a
set_target_properties(hello PROPERTIES CLEAN_DIRECT_OUTPUT 1)
set_target_properties(hello_static PROPERTIES CLEAN_DIRECT_OUTPUT 1)

# 动态库版本号
set_target_properties(hello PROPERTIES VERSION 1.2 SOVERSION 1)


# 设置安装的路径
set(CMAKE_INSTALL_PREFIX ${CMAKE_CURRENT_LIST_DIR})  
message(STATUS "This is lib_hello dir" ${CMAKE_CURRENT_LIST_DIR}) 

# 库的安装 install
# 动态库hello
# 静态可hello_static
install(
TARGETS hello hello_static
LIBRARY DESTINATION exe/lib
ARCHIVE DESTINATION exe/lib
)

# 安装头文件
install(FILES hello.h DESTINATION exe/lib)
