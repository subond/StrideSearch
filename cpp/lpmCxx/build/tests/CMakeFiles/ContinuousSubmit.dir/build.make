# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /gscratch/mmcches/StrideSearch/cpp/lpmCxx

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /gscratch/mmcches/StrideSearch/cpp/lpmCxx/build

# Utility rule file for ContinuousSubmit.

# Include the progress variables for this target.
include tests/CMakeFiles/ContinuousSubmit.dir/progress.make

tests/CMakeFiles/ContinuousSubmit:
	cd /gscratch/mmcches/StrideSearch/cpp/lpmCxx/build/tests && /usr/bin/ctest -D ContinuousSubmit

ContinuousSubmit: tests/CMakeFiles/ContinuousSubmit
ContinuousSubmit: tests/CMakeFiles/ContinuousSubmit.dir/build.make
.PHONY : ContinuousSubmit

# Rule to build all files generated by this target.
tests/CMakeFiles/ContinuousSubmit.dir/build: ContinuousSubmit
.PHONY : tests/CMakeFiles/ContinuousSubmit.dir/build

tests/CMakeFiles/ContinuousSubmit.dir/clean:
	cd /gscratch/mmcches/StrideSearch/cpp/lpmCxx/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/ContinuousSubmit.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/ContinuousSubmit.dir/clean

tests/CMakeFiles/ContinuousSubmit.dir/depend:
	cd /gscratch/mmcches/StrideSearch/cpp/lpmCxx/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /gscratch/mmcches/StrideSearch/cpp/lpmCxx /gscratch/mmcches/StrideSearch/cpp/lpmCxx/tests /gscratch/mmcches/StrideSearch/cpp/lpmCxx/build /gscratch/mmcches/StrideSearch/cpp/lpmCxx/build/tests /gscratch/mmcches/StrideSearch/cpp/lpmCxx/build/tests/CMakeFiles/ContinuousSubmit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/ContinuousSubmit.dir/depend

