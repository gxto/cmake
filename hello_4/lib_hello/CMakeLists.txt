# 设置库生成的位置,要生成在 out_lib 中（这个文件夹名字是自己随便设立的）
set(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/out_lib)
# 生存libhello的库,并且要添加生存库的代码hello.c
add_library(libhello hello.c)
# 重新对libhello进行命名，因为cmake会自动帮我们添加前缀lib。
# 如果不重新命名，就会生成liblibhello的库。
set_target_properties(libhello PROPERTIES OUTPUT_NAME "hello")

