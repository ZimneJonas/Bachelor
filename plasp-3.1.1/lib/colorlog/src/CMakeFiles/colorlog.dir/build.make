# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/zimne/Documents/Studium/Bachelor/plasp-3.1.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zimne/Documents/Studium/Bachelor/plasp-3.1.1

# Include any dependencies generated for this target.
include lib/colorlog/src/CMakeFiles/colorlog.dir/depend.make

# Include the progress variables for this target.
include lib/colorlog/src/CMakeFiles/colorlog.dir/progress.make

# Include the compile flags for this target's objects.
include lib/colorlog/src/CMakeFiles/colorlog.dir/flags.make

lib/colorlog/src/CMakeFiles/colorlog.dir/colorlog/Logger.cpp.o: lib/colorlog/src/CMakeFiles/colorlog.dir/flags.make
lib/colorlog/src/CMakeFiles/colorlog.dir/colorlog/Logger.cpp.o: lib/colorlog/src/colorlog/Logger.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zimne/Documents/Studium/Bachelor/plasp-3.1.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/colorlog/src/CMakeFiles/colorlog.dir/colorlog/Logger.cpp.o"
	cd /home/zimne/Documents/Studium/Bachelor/plasp-3.1.1/lib/colorlog/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/colorlog.dir/colorlog/Logger.cpp.o -c /home/zimne/Documents/Studium/Bachelor/plasp-3.1.1/lib/colorlog/src/colorlog/Logger.cpp

lib/colorlog/src/CMakeFiles/colorlog.dir/colorlog/Logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/colorlog.dir/colorlog/Logger.cpp.i"
	cd /home/zimne/Documents/Studium/Bachelor/plasp-3.1.1/lib/colorlog/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zimne/Documents/Studium/Bachelor/plasp-3.1.1/lib/colorlog/src/colorlog/Logger.cpp > CMakeFiles/colorlog.dir/colorlog/Logger.cpp.i

lib/colorlog/src/CMakeFiles/colorlog.dir/colorlog/Logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/colorlog.dir/colorlog/Logger.cpp.s"
	cd /home/zimne/Documents/Studium/Bachelor/plasp-3.1.1/lib/colorlog/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zimne/Documents/Studium/Bachelor/plasp-3.1.1/lib/colorlog/src/colorlog/Logger.cpp -o CMakeFiles/colorlog.dir/colorlog/Logger.cpp.s

# Object files for target colorlog
colorlog_OBJECTS = \
"CMakeFiles/colorlog.dir/colorlog/Logger.cpp.o"

# External object files for target colorlog
colorlog_EXTERNAL_OBJECTS =

lib/libcolorlog.a: lib/colorlog/src/CMakeFiles/colorlog.dir/colorlog/Logger.cpp.o
lib/libcolorlog.a: lib/colorlog/src/CMakeFiles/colorlog.dir/build.make
lib/libcolorlog.a: lib/colorlog/src/CMakeFiles/colorlog.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zimne/Documents/Studium/Bachelor/plasp-3.1.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../libcolorlog.a"
	cd /home/zimne/Documents/Studium/Bachelor/plasp-3.1.1/lib/colorlog/src && $(CMAKE_COMMAND) -P CMakeFiles/colorlog.dir/cmake_clean_target.cmake
	cd /home/zimne/Documents/Studium/Bachelor/plasp-3.1.1/lib/colorlog/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/colorlog.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/colorlog/src/CMakeFiles/colorlog.dir/build: lib/libcolorlog.a

.PHONY : lib/colorlog/src/CMakeFiles/colorlog.dir/build

lib/colorlog/src/CMakeFiles/colorlog.dir/clean:
	cd /home/zimne/Documents/Studium/Bachelor/plasp-3.1.1/lib/colorlog/src && $(CMAKE_COMMAND) -P CMakeFiles/colorlog.dir/cmake_clean.cmake
.PHONY : lib/colorlog/src/CMakeFiles/colorlog.dir/clean

lib/colorlog/src/CMakeFiles/colorlog.dir/depend:
	cd /home/zimne/Documents/Studium/Bachelor/plasp-3.1.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zimne/Documents/Studium/Bachelor/plasp-3.1.1 /home/zimne/Documents/Studium/Bachelor/plasp-3.1.1/lib/colorlog/src /home/zimne/Documents/Studium/Bachelor/plasp-3.1.1 /home/zimne/Documents/Studium/Bachelor/plasp-3.1.1/lib/colorlog/src /home/zimne/Documents/Studium/Bachelor/plasp-3.1.1/lib/colorlog/src/CMakeFiles/colorlog.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/colorlog/src/CMakeFiles/colorlog.dir/depend
