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
include CMakeFiles/signaling_server.exe.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/signaling_server.exe.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/signaling_server.exe.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/signaling_server.exe.dir/flags.make

CMakeFiles/signaling_server.exe.dir/src/main.cpp.o: CMakeFiles/signaling_server.exe.dir/flags.make
CMakeFiles/signaling_server.exe.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/signaling_server.exe.dir/src/main.cpp.o: CMakeFiles/signaling_server.exe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/signaling_server.exe.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/signaling_server.exe.dir/src/main.cpp.o -MF CMakeFiles/signaling_server.exe.dir/src/main.cpp.o.d -o CMakeFiles/signaling_server.exe.dir/src/main.cpp.o -c /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/src/main.cpp

CMakeFiles/signaling_server.exe.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/signaling_server.exe.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/src/main.cpp > CMakeFiles/signaling_server.exe.dir/src/main.cpp.i

CMakeFiles/signaling_server.exe.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/signaling_server.exe.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/src/main.cpp -o CMakeFiles/signaling_server.exe.dir/src/main.cpp.s

# Object files for target signaling_server.exe
signaling_server_exe_OBJECTS = \
"CMakeFiles/signaling_server.exe.dir/src/main.cpp.o"

# External object files for target signaling_server.exe
signaling_server_exe_EXTERNAL_OBJECTS =

output/signaling_server.exe: CMakeFiles/signaling_server.exe.dir/src/main.cpp.o
output/signaling_server.exe: CMakeFiles/signaling_server.exe.dir/build.make
output/signaling_server.exe: _deps/fmt-build/libfmt.a
output/signaling_server.exe: _deps/boost-build/libs/coroutine/libboost_coroutine.a
output/signaling_server.exe: _deps/boost-build/libs/context/libboost_context.a
output/signaling_server.exe: _deps/boost-build/libs/date_time/libboost_date_time.a
output/signaling_server.exe: _deps/boost-build/libs/exception/libboost_exception.a
output/signaling_server.exe: _deps/boost-build/libs/container/libboost_container.a
output/signaling_server.exe: CMakeFiles/signaling_server.exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable output/signaling_server.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/signaling_server.exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/signaling_server.exe.dir/build: output/signaling_server.exe
.PHONY : CMakeFiles/signaling_server.exe.dir/build

CMakeFiles/signaling_server.exe.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/signaling_server.exe.dir/cmake_clean.cmake
.PHONY : CMakeFiles/signaling_server.exe.dir/clean

CMakeFiles/signaling_server.exe.dir/depend:
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/CMakeFiles/signaling_server.exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/signaling_server.exe.dir/depend
