# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/gxt_c/gxt_cmake/hello(3)"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/gxt_c/gxt_cmake/hello(3)/temp"

# Include any dependencies generated for this target.
include src_main/CMakeFiles/hello.dir/depend.make

# Include the progress variables for this target.
include src_main/CMakeFiles/hello.dir/progress.make

# Include the compile flags for this target's objects.
include src_main/CMakeFiles/hello.dir/flags.make

src_main/CMakeFiles/hello.dir/main.c.o: src_main/CMakeFiles/hello.dir/flags.make
src_main/CMakeFiles/hello.dir/main.c.o: ../src_main/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/gxt_c/gxt_cmake/hello(3)/temp/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object src_main/CMakeFiles/hello.dir/main.c.o"
	cd "/home/gxt_c/gxt_cmake/hello(3)/temp/src_main" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/hello.dir/main.c.o   -c "/home/gxt_c/gxt_cmake/hello(3)/src_main/main.c"

src_main/CMakeFiles/hello.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hello.dir/main.c.i"
	cd "/home/gxt_c/gxt_cmake/hello(3)/temp/src_main" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/gxt_c/gxt_cmake/hello(3)/src_main/main.c" > CMakeFiles/hello.dir/main.c.i

src_main/CMakeFiles/hello.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hello.dir/main.c.s"
	cd "/home/gxt_c/gxt_cmake/hello(3)/temp/src_main" && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/gxt_c/gxt_cmake/hello(3)/src_main/main.c" -o CMakeFiles/hello.dir/main.c.s

src_main/CMakeFiles/hello.dir/main.c.o.requires:

.PHONY : src_main/CMakeFiles/hello.dir/main.c.o.requires

src_main/CMakeFiles/hello.dir/main.c.o.provides: src_main/CMakeFiles/hello.dir/main.c.o.requires
	$(MAKE) -f src_main/CMakeFiles/hello.dir/build.make src_main/CMakeFiles/hello.dir/main.c.o.provides.build
.PHONY : src_main/CMakeFiles/hello.dir/main.c.o.provides

src_main/CMakeFiles/hello.dir/main.c.o.provides.build: src_main/CMakeFiles/hello.dir/main.c.o


# Object files for target hello
hello_OBJECTS = \
"CMakeFiles/hello.dir/main.c.o"

# External object files for target hello
hello_EXTERNAL_OBJECTS =

src_main/hello: src_main/CMakeFiles/hello.dir/main.c.o
src_main/hello: src_main/CMakeFiles/hello.dir/build.make
src_main/hello: lib_hello/libhello.a
src_main/hello: src_main/CMakeFiles/hello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/gxt_c/gxt_cmake/hello(3)/temp/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable hello"
	cd "/home/gxt_c/gxt_cmake/hello(3)/temp/src_main" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src_main/CMakeFiles/hello.dir/build: src_main/hello

.PHONY : src_main/CMakeFiles/hello.dir/build

src_main/CMakeFiles/hello.dir/requires: src_main/CMakeFiles/hello.dir/main.c.o.requires

.PHONY : src_main/CMakeFiles/hello.dir/requires

src_main/CMakeFiles/hello.dir/clean:
	cd "/home/gxt_c/gxt_cmake/hello(3)/temp/src_main" && $(CMAKE_COMMAND) -P CMakeFiles/hello.dir/cmake_clean.cmake
.PHONY : src_main/CMakeFiles/hello.dir/clean

src_main/CMakeFiles/hello.dir/depend:
	cd "/home/gxt_c/gxt_cmake/hello(3)/temp" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/gxt_c/gxt_cmake/hello(3)" "/home/gxt_c/gxt_cmake/hello(3)/src_main" "/home/gxt_c/gxt_cmake/hello(3)/temp" "/home/gxt_c/gxt_cmake/hello(3)/temp/src_main" "/home/gxt_c/gxt_cmake/hello(3)/temp/src_main/CMakeFiles/hello.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : src_main/CMakeFiles/hello.dir/depend

