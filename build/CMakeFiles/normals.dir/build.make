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
include CMakeFiles/normals.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/normals.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/normals.dir/flags.make

CMakeFiles/normals.dir/src/normals.cpp.o: CMakeFiles/normals.dir/flags.make
CMakeFiles/normals.dir/src/normals.cpp.o: ../src/normals.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/niginadaniyarova/Desktop/cs312/raytracer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/normals.dir/src/normals.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/normals.dir/src/normals.cpp.o -c /Users/niginadaniyarova/Desktop/cs312/raytracer/src/normals.cpp

CMakeFiles/normals.dir/src/normals.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/normals.dir/src/normals.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/niginadaniyarova/Desktop/cs312/raytracer/src/normals.cpp > CMakeFiles/normals.dir/src/normals.cpp.i

CMakeFiles/normals.dir/src/normals.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/normals.dir/src/normals.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/niginadaniyarova/Desktop/cs312/raytracer/src/normals.cpp -o CMakeFiles/normals.dir/src/normals.cpp.s

CMakeFiles/normals.dir/src/AGLM.cpp.o: CMakeFiles/normals.dir/flags.make
CMakeFiles/normals.dir/src/AGLM.cpp.o: ../src/AGLM.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/niginadaniyarova/Desktop/cs312/raytracer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/normals.dir/src/AGLM.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/normals.dir/src/AGLM.cpp.o -c /Users/niginadaniyarova/Desktop/cs312/raytracer/src/AGLM.cpp

CMakeFiles/normals.dir/src/AGLM.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/normals.dir/src/AGLM.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/niginadaniyarova/Desktop/cs312/raytracer/src/AGLM.cpp > CMakeFiles/normals.dir/src/AGLM.cpp.i

CMakeFiles/normals.dir/src/AGLM.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/normals.dir/src/AGLM.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/niginadaniyarova/Desktop/cs312/raytracer/src/AGLM.cpp -o CMakeFiles/normals.dir/src/AGLM.cpp.s

CMakeFiles/normals.dir/src/ppm_image.cpp.o: CMakeFiles/normals.dir/flags.make
CMakeFiles/normals.dir/src/ppm_image.cpp.o: ../src/ppm_image.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/niginadaniyarova/Desktop/cs312/raytracer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/normals.dir/src/ppm_image.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/normals.dir/src/ppm_image.cpp.o -c /Users/niginadaniyarova/Desktop/cs312/raytracer/src/ppm_image.cpp

CMakeFiles/normals.dir/src/ppm_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/normals.dir/src/ppm_image.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/niginadaniyarova/Desktop/cs312/raytracer/src/ppm_image.cpp > CMakeFiles/normals.dir/src/ppm_image.cpp.i

CMakeFiles/normals.dir/src/ppm_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/normals.dir/src/ppm_image.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/niginadaniyarova/Desktop/cs312/raytracer/src/ppm_image.cpp -o CMakeFiles/normals.dir/src/ppm_image.cpp.s

CMakeFiles/normals.dir/src/main.cpp.o: CMakeFiles/normals.dir/flags.make
CMakeFiles/normals.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/niginadaniyarova/Desktop/cs312/raytracer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/normals.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/normals.dir/src/main.cpp.o -c /Users/niginadaniyarova/Desktop/cs312/raytracer/src/main.cpp

CMakeFiles/normals.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/normals.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/niginadaniyarova/Desktop/cs312/raytracer/src/main.cpp > CMakeFiles/normals.dir/src/main.cpp.i

CMakeFiles/normals.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/normals.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/niginadaniyarova/Desktop/cs312/raytracer/src/main.cpp -o CMakeFiles/normals.dir/src/main.cpp.s

# Object files for target normals
normals_OBJECTS = \
"CMakeFiles/normals.dir/src/normals.cpp.o" \
"CMakeFiles/normals.dir/src/AGLM.cpp.o" \
"CMakeFiles/normals.dir/src/ppm_image.cpp.o" \
"CMakeFiles/normals.dir/src/main.cpp.o"

# External object files for target normals
normals_EXTERNAL_OBJECTS =

../bin/normals: CMakeFiles/normals.dir/src/normals.cpp.o
../bin/normals: CMakeFiles/normals.dir/src/AGLM.cpp.o
../bin/normals: CMakeFiles/normals.dir/src/ppm_image.cpp.o
../bin/normals: CMakeFiles/normals.dir/src/main.cpp.o
../bin/normals: CMakeFiles/normals.dir/build.make
../bin/normals: /usr/local/lib/libglfw.dylib
../bin/normals: CMakeFiles/normals.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/niginadaniyarova/Desktop/cs312/raytracer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ../bin/normals"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/normals.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/normals.dir/build: ../bin/normals

.PHONY : CMakeFiles/normals.dir/build

CMakeFiles/normals.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/normals.dir/cmake_clean.cmake
.PHONY : CMakeFiles/normals.dir/clean

CMakeFiles/normals.dir/depend:
	cd /Users/niginadaniyarova/Desktop/cs312/raytracer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/niginadaniyarova/Desktop/cs312/raytracer /Users/niginadaniyarova/Desktop/cs312/raytracer /Users/niginadaniyarova/Desktop/cs312/raytracer/build /Users/niginadaniyarova/Desktop/cs312/raytracer/build /Users/niginadaniyarova/Desktop/cs312/raytracer/build/CMakeFiles/normals.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/normals.dir/depend

