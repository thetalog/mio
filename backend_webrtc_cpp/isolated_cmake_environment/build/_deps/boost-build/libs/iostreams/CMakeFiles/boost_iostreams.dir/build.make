# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build

# Include any dependencies generated for this target.
include _deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/flags.make

_deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/src/file_descriptor.cpp.o: _deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/flags.make
_deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/src/file_descriptor.cpp.o: _deps/boost-src/libs/iostreams/src/file_descriptor.cpp
_deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/src/file_descriptor.cpp.o: _deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/src/file_descriptor.cpp.o"
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build/libs/iostreams && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/src/file_descriptor.cpp.o -MF CMakeFiles/boost_iostreams.dir/src/file_descriptor.cpp.o.d -o CMakeFiles/boost_iostreams.dir/src/file_descriptor.cpp.o -c /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-src/libs/iostreams/src/file_descriptor.cpp

_deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/src/file_descriptor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/boost_iostreams.dir/src/file_descriptor.cpp.i"
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build/libs/iostreams && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-src/libs/iostreams/src/file_descriptor.cpp > CMakeFiles/boost_iostreams.dir/src/file_descriptor.cpp.i

_deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/src/file_descriptor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/boost_iostreams.dir/src/file_descriptor.cpp.s"
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build/libs/iostreams && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-src/libs/iostreams/src/file_descriptor.cpp -o CMakeFiles/boost_iostreams.dir/src/file_descriptor.cpp.s

_deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/src/mapped_file.cpp.o: _deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/flags.make
_deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/src/mapped_file.cpp.o: _deps/boost-src/libs/iostreams/src/mapped_file.cpp
_deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/src/mapped_file.cpp.o: _deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object _deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/src/mapped_file.cpp.o"
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build/libs/iostreams && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/src/mapped_file.cpp.o -MF CMakeFiles/boost_iostreams.dir/src/mapped_file.cpp.o.d -o CMakeFiles/boost_iostreams.dir/src/mapped_file.cpp.o -c /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-src/libs/iostreams/src/mapped_file.cpp

_deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/src/mapped_file.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/boost_iostreams.dir/src/mapped_file.cpp.i"
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build/libs/iostreams && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-src/libs/iostreams/src/mapped_file.cpp > CMakeFiles/boost_iostreams.dir/src/mapped_file.cpp.i

_deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/src/mapped_file.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/boost_iostreams.dir/src/mapped_file.cpp.s"
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build/libs/iostreams && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-src/libs/iostreams/src/mapped_file.cpp -o CMakeFiles/boost_iostreams.dir/src/mapped_file.cpp.s

# Object files for target boost_iostreams
boost_iostreams_OBJECTS = \
"CMakeFiles/boost_iostreams.dir/src/file_descriptor.cpp.o" \
"CMakeFiles/boost_iostreams.dir/src/mapped_file.cpp.o"

# External object files for target boost_iostreams
boost_iostreams_EXTERNAL_OBJECTS =

_deps/boost-build/libs/iostreams/libboost_iostreams.a: _deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/src/file_descriptor.cpp.o
_deps/boost-build/libs/iostreams/libboost_iostreams.a: _deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/src/mapped_file.cpp.o
_deps/boost-build/libs/iostreams/libboost_iostreams.a: _deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/build.make
_deps/boost-build/libs/iostreams/libboost_iostreams.a: _deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libboost_iostreams.a"
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build/libs/iostreams && $(CMAKE_COMMAND) -P CMakeFiles/boost_iostreams.dir/cmake_clean_target.cmake
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build/libs/iostreams && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/boost_iostreams.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/build: _deps/boost-build/libs/iostreams/libboost_iostreams.a
.PHONY : _deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/build

_deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/clean:
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build/libs/iostreams && $(CMAKE_COMMAND) -P CMakeFiles/boost_iostreams.dir/cmake_clean.cmake
.PHONY : _deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/clean

_deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/depend:
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-src/libs/iostreams /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build/libs/iostreams /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/boost-build/libs/iostreams/CMakeFiles/boost_iostreams.dir/depend
