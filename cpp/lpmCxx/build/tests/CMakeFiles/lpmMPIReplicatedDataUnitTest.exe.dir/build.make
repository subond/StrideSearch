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

# Include any dependencies generated for this target.
include tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/flags.make

tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/LpmMPIReplicatedDataUnitTests.cpp.o: tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/flags.make
tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/LpmMPIReplicatedDataUnitTests.cpp.o: ../tests/LpmMPIReplicatedDataUnitTests.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /gscratch/mmcches/StrideSearch/cpp/lpmCxx/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/LpmMPIReplicatedDataUnitTests.cpp.o"
	cd /gscratch/mmcches/StrideSearch/cpp/lpmCxx/build/tests && /opt/openmpi/2.0/intel/bin/mpicxx   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/LpmMPIReplicatedDataUnitTests.cpp.o -c /gscratch/mmcches/StrideSearch/cpp/lpmCxx/tests/LpmMPIReplicatedDataUnitTests.cpp

tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/LpmMPIReplicatedDataUnitTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/LpmMPIReplicatedDataUnitTests.cpp.i"
	cd /gscratch/mmcches/StrideSearch/cpp/lpmCxx/build/tests && /opt/openmpi/2.0/intel/bin/mpicxx  $(CXX_DEFINES) $(CXX_FLAGS) -E /gscratch/mmcches/StrideSearch/cpp/lpmCxx/tests/LpmMPIReplicatedDataUnitTests.cpp > CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/LpmMPIReplicatedDataUnitTests.cpp.i

tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/LpmMPIReplicatedDataUnitTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/LpmMPIReplicatedDataUnitTests.cpp.s"
	cd /gscratch/mmcches/StrideSearch/cpp/lpmCxx/build/tests && /opt/openmpi/2.0/intel/bin/mpicxx  $(CXX_DEFINES) $(CXX_FLAGS) -S /gscratch/mmcches/StrideSearch/cpp/lpmCxx/tests/LpmMPIReplicatedDataUnitTests.cpp -o CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/LpmMPIReplicatedDataUnitTests.cpp.s

tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/LpmMPIReplicatedDataUnitTests.cpp.o.requires:
.PHONY : tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/LpmMPIReplicatedDataUnitTests.cpp.o.requires

tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/LpmMPIReplicatedDataUnitTests.cpp.o.provides: tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/LpmMPIReplicatedDataUnitTests.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/build.make tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/LpmMPIReplicatedDataUnitTests.cpp.o.provides.build
.PHONY : tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/LpmMPIReplicatedDataUnitTests.cpp.o.provides

tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/LpmMPIReplicatedDataUnitTests.cpp.o.provides.build: tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/LpmMPIReplicatedDataUnitTests.cpp.o

# Object files for target lpmMPIReplicatedDataUnitTest.exe
lpmMPIReplicatedDataUnitTest_exe_OBJECTS = \
"CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/LpmMPIReplicatedDataUnitTests.cpp.o"

# External object files for target lpmMPIReplicatedDataUnitTest.exe
lpmMPIReplicatedDataUnitTest_exe_EXTERNAL_OBJECTS =

tests/lpmMPIReplicatedDataUnitTest.exe: tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/LpmMPIReplicatedDataUnitTests.cpp.o
tests/lpmMPIReplicatedDataUnitTest.exe: tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/build.make
tests/lpmMPIReplicatedDataUnitTest.exe: src/liblpm.a
tests/lpmMPIReplicatedDataUnitTest.exe: tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable lpmMPIReplicatedDataUnitTest.exe"
	cd /gscratch/mmcches/StrideSearch/cpp/lpmCxx/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/build: tests/lpmMPIReplicatedDataUnitTest.exe
.PHONY : tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/build

tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/requires: tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/LpmMPIReplicatedDataUnitTests.cpp.o.requires
.PHONY : tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/requires

tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/clean:
	cd /gscratch/mmcches/StrideSearch/cpp/lpmCxx/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/clean

tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/depend:
	cd /gscratch/mmcches/StrideSearch/cpp/lpmCxx/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /gscratch/mmcches/StrideSearch/cpp/lpmCxx /gscratch/mmcches/StrideSearch/cpp/lpmCxx/tests /gscratch/mmcches/StrideSearch/cpp/lpmCxx/build /gscratch/mmcches/StrideSearch/cpp/lpmCxx/build/tests /gscratch/mmcches/StrideSearch/cpp/lpmCxx/build/tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/lpmMPIReplicatedDataUnitTest.exe.dir/depend

