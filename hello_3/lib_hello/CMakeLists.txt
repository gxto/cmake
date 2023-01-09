# 生存libhello的库,并且要添加生存库的代码hello.c
add_library(libhello hello.c)
# 重新对libhello进行命名，因为cmake会自动帮我们添加前缀lib。
# 如果不重新命名，就会生成liblibhello的库。
set_target_properties(libhello PROPERTIES OUTPUT_NAME "hello")

