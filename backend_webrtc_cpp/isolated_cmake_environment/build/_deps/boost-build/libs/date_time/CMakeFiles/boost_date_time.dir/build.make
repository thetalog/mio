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
include _deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/flags.make

_deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/src/gregorian/greg_month.cpp.o: _deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/flags.make
_deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/src/gregorian/greg_month.cpp.o: _deps/boost-src/libs/date_time/src/gregorian/greg_month.cpp
_deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/src/gregorian/greg_month.cpp.o: _deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/src/gregorian/greg_month.cpp.o"
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build/libs/date_time && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/src/gregorian/greg_month.cpp.o -MF CMakeFiles/boost_date_time.dir/src/gregorian/greg_month.cpp.o.d -o CMakeFiles/boost_date_time.dir/src/gregorian/greg_month.cpp.o -c /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-src/libs/date_time/src/gregorian/greg_month.cpp

_deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/src/gregorian/greg_month.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/boost_date_time.dir/src/gregorian/greg_month.cpp.i"
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build/libs/date_time && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-src/libs/date_time/src/gregorian/greg_month.cpp > CMakeFiles/boost_date_time.dir/src/gregorian/greg_month.cpp.i

_deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/src/gregorian/greg_month.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/boost_date_time.dir/src/gregorian/greg_month.cpp.s"
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build/libs/date_time && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-src/libs/date_time/src/gregorian/greg_month.cpp -o CMakeFiles/boost_date_time.dir/src/gregorian/greg_month.cpp.s

# Object files for target boost_date_time
boost_date_time_OBJECTS = \
"CMakeFiles/boost_date_time.dir/src/gregorian/greg_month.cpp.o"

# External object files for target boost_date_time
boost_date_time_EXTERNAL_OBJECTS =

_deps/boost-build/libs/date_time/libboost_date_time.so.1.85.0: _deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/src/gregorian/greg_month.cpp.o
_deps/boost-build/libs/date_time/libboost_date_time.so.1.85.0: _deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/build.make
_deps/boost-build/libs/date_time/libboost_date_time.so.1.85.0: _deps/boost-build/libs/exception/libboost_exception.a
_deps/boost-build/libs/date_time/libboost_date_time.so.1.85.0: _deps/boost-build/libs/container/libboost_container.so.1.85.0
_deps/boost-build/libs/date_time/libboost_date_time.so.1.85.0: _deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libboost_date_time.so"
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build/libs/date_time && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/boost_date_time.dir/link.txt --verbose=$(VERBOSE)
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build/libs/date_time && $(CMAKE_COMMAND) -E cmake_symlink_library libboost_date_time.so.1.85.0 libboost_date_time.so.1.85.0 libboost_date_time.so

_deps/boost-build/libs/date_time/libboost_date_time.so: _deps/boost-build/libs/date_time/libboost_date_time.so.1.85.0
	@$(CMAKE_COMMAND) -E touch_nocreate _deps/boost-build/libs/date_time/libboost_date_time.so

# Rule to build all files generated by this target.
_deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/build: _deps/boost-build/libs/date_time/libboost_date_time.so
.PHONY : _deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/build

_deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/clean:
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build/libs/date_time && $(CMAKE_COMMAND) -P CMakeFiles/boost_date_time.dir/cmake_clean.cmake
.PHONY : _deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/clean

_deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/depend:
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-src/libs/date_time /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build/libs/date_time /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/boost-build/libs/date_time/CMakeFiles/boost_date_time.dir/depend

