# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.19.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.19.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/niginadaniyarova/Desktop/cs312/raytracer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/niginadaniyarova/Desktop/cs312/raytracer/build

# Include any dependencies generated for this target.
include CMakeFiles/intesection_tests.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/intesection_tests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/intesection_tests.dir/flags.make

CMakeFiles/intesection_tests.dir/src/intesection_tests.cpp.o: CMakeFiles/intesection_tests.dir/flags.make
CMakeFiles/intesection_tests.dir/src/intesection_tests.cpp.o: ../src/intesection_tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/niginadaniyarova/Desktop/cs312/raytracer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/intesection_tests.dir/src/intesection_tests.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/intesection_tests.dir/src/intesection_tests.cpp.o -c /Users/niginadaniyarova/Desktop/cs312/raytracer/src/intesection_tests.cpp

CMakeFiles/intesection_tests.dir/src/intesection_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/intesection_tests.dir/src/intesection_tests.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/niginadaniyarova/Desktop/cs312/raytracer/src/intesection_tests.cpp > CMakeFiles/intesection_tests.dir/src/intesection_tests.cpp.i

CMakeFiles/intesection_tests.dir/src/intesection_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/intesection_tests.dir/src/intesection_tests.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/niginadaniyarova/Desktop/cs312/raytracer/src/intesection_tests.cpp -o CMakeFiles/intesection_tests.dir/src/intesection_tests.cpp.s

CMakeFiles/intesection_tests.dir/src/AGLM.cpp.o: CMakeFiles/intesection_tests.dir/flags.make
CMakeFiles/intesection_tests.dir/src/AGLM.cpp.o: ../src/AGLM.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/niginadaniyarova/Desktop/cs312/raytracer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/intesection_tests.dir/src/AGLM.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/intesection_tests.dir/src/AGLM.cpp.o -c /Users/niginadaniyarova/Desktop/cs312/raytracer/src/AGLM.cpp

CMakeFiles/intesection_tests.dir/src/AGLM.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/intesection_tests.dir/src/AGLM.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/niginadaniyarova/Desktop/cs312/raytracer/src/AGLM.cpp > CMakeFiles/intesection_tests.dir/src/AGLM.cpp.i

CMakeFiles/intesection_tests.dir/src/AGLM.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/intesection_tests.dir/src/AGLM.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/niginadaniyarova/Desktop/cs312/raytracer/src/AGLM.cpp -o CMakeFiles/intesection_tests.dir/src/AGLM.cpp.s

# Object files for target intesection_tests
intesection_tests_OBJECTS = \
"CMakeFiles/intesection_tests.dir/src/intesection_tests.cpp.o" \
"CMakeFiles/intesection_tests.dir/src/AGLM.cpp.o"

# External object files for target intesection_tests
intesection_tests_EXTERNAL_OBJECTS =

../bin/intesection_tests: CMakeFiles/intesection_tests.dir/src/intesection_tests.cpp.o
../bin/intesection_tests: CMakeFiles/intesection_tests.dir/src/AGLM.cpp.o
../bin/intesection_tests: CMakeFiles/intesection_tests.dir/build.make
../bin/intesection_tests: /usr/local/lib/libglfw.dylib
../bin/intesection_tests: CMakeFiles/intesection_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/niginadaniyarova/Desktop/cs312/raytracer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../bin/intesection_tests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/intesection_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/intesection_tests.dir/build: ../bin/intesection_tests

.PHONY : CMakeFiles/intesection_tests.dir/build

CMakeFiles/intesection_tests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/intesection_tests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/intesection_tests.dir/clean

CMakeFiles/intesection_tests.dir/depend:
	cd /Users/niginadaniyarova/Desktop/cs312/raytracer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/niginadaniyarova/Desktop/cs312/raytracer /Users/niginadaniyarova/Desktop/cs312/raytracer /Users/niginadaniyarova/Desktop/cs312/raytracer/build /Users/niginadaniyarova/Desktop/cs312/raytracer/build /Users/niginadaniyarova/Desktop/cs312/raytracer/build/CMakeFiles/intesection_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/intesection_tests.dir/depend

