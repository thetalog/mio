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
CMAKE_SOURCE_DIR = /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild

# Utility rule file for boost-populate.

# Include any custom commands dependencies for this target.
include CMakeFiles/boost-populate.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/boost-populate.dir/progress.make

CMakeFiles/boost-populate: CMakeFiles/boost-populate-complete

CMakeFiles/boost-populate-complete: boost-populate-prefix/src/boost-populate-stamp/boost-populate-install
CMakeFiles/boost-populate-complete: boost-populate-prefix/src/boost-populate-stamp/boost-populate-mkdir
CMakeFiles/boost-populate-complete: boost-populate-prefix/src/boost-populate-stamp/boost-populate-download
CMakeFiles/boost-populate-complete: boost-populate-prefix/src/boost-populate-stamp/boost-populate-update
CMakeFiles/boost-populate-complete: boost-populate-prefix/src/boost-populate-stamp/boost-populate-patch
CMakeFiles/boost-populate-complete: boost-populate-prefix/src/boost-populate-stamp/boost-populate-configure
CMakeFiles/boost-populate-complete: boost-populate-prefix/src/boost-populate-stamp/boost-populate-build
CMakeFiles/boost-populate-complete: boost-populate-prefix/src/boost-populate-stamp/boost-populate-install
CMakeFiles/boost-populate-complete: boost-populate-prefix/src/boost-populate-stamp/boost-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'boost-populate'"
	/usr/bin/cmake -E make_directory /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/CMakeFiles
	/usr/bin/cmake -E touch /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/CMakeFiles/boost-populate-complete
	/usr/bin/cmake -E touch /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/boost-populate-prefix/src/boost-populate-stamp/boost-populate-done

boost-populate-prefix/src/boost-populate-stamp/boost-populate-update:
.PHONY : boost-populate-prefix/src/boost-populate-stamp/boost-populate-update

boost-populate-prefix/src/boost-populate-stamp/boost-populate-build: boost-populate-prefix/src/boost-populate-stamp/boost-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No build step for 'boost-populate'"
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build && /usr/bin/cmake -E echo_append
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build && /usr/bin/cmake -E touch /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/boost-populate-prefix/src/boost-populate-stamp/boost-populate-build

boost-populate-prefix/src/boost-populate-stamp/boost-populate-configure: boost-populate-prefix/tmp/boost-populate-cfgcmd.txt
boost-populate-prefix/src/boost-populate-stamp/boost-populate-configure: boost-populate-prefix/src/boost-populate-stamp/boost-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "No configure step for 'boost-populate'"
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build && /usr/bin/cmake -E echo_append
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build && /usr/bin/cmake -E touch /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/boost-populate-prefix/src/boost-populate-stamp/boost-populate-configure

boost-populate-prefix/src/boost-populate-stamp/boost-populate-download: boost-populate-prefix/src/boost-populate-stamp/boost-populate-gitinfo.txt
boost-populate-prefix/src/boost-populate-stamp/boost-populate-download: boost-populate-prefix/src/boost-populate-stamp/boost-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'boost-populate'"
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps && /usr/bin/cmake -P /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/boost-populate-prefix/tmp/boost-populate-gitclone.cmake
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps && /usr/bin/cmake -E touch /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/boost-populate-prefix/src/boost-populate-stamp/boost-populate-download

boost-populate-prefix/src/boost-populate-stamp/boost-populate-install: boost-populate-prefix/src/boost-populate-stamp/boost-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'boost-populate'"
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build && /usr/bin/cmake -E echo_append
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build && /usr/bin/cmake -E touch /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/boost-populate-prefix/src/boost-populate-stamp/boost-populate-install

boost-populate-prefix/src/boost-populate-stamp/boost-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'boost-populate'"
	/usr/bin/cmake -E make_directory /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-src
	/usr/bin/cmake -E make_directory /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build
	/usr/bin/cmake -E make_directory /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/boost-populate-prefix
	/usr/bin/cmake -E make_directory /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/boost-populate-prefix/tmp
	/usr/bin/cmake -E make_directory /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/boost-populate-prefix/src/boost-populate-stamp
	/usr/bin/cmake -E make_directory /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/boost-populate-prefix/src
	/usr/bin/cmake -E make_directory /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/boost-populate-prefix/src/boost-populate-stamp
	/usr/bin/cmake -E touch /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/boost-populate-prefix/src/boost-populate-stamp/boost-populate-mkdir

boost-populate-prefix/src/boost-populate-stamp/boost-populate-patch: boost-populate-prefix/src/boost-populate-stamp/boost-populate-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'boost-populate'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/boost-populate-prefix/src/boost-populate-stamp/boost-populate-patch

boost-populate-prefix/src/boost-populate-stamp/boost-populate-update:
.PHONY : boost-populate-prefix/src/boost-populate-stamp/boost-populate-update

boost-populate-prefix/src/boost-populate-stamp/boost-populate-test: boost-populate-prefix/src/boost-populate-stamp/boost-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No test step for 'boost-populate'"
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build && /usr/bin/cmake -E echo_append
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-build && /usr/bin/cmake -E touch /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/boost-populate-prefix/src/boost-populate-stamp/boost-populate-test

boost-populate-prefix/src/boost-populate-stamp/boost-populate-update: boost-populate-prefix/src/boost-populate-stamp/boost-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Performing update step for 'boost-populate'"
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-src && /usr/bin/cmake -P /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/boost-populate-prefix/tmp/boost-populate-gitupdate.cmake

boost-populate: CMakeFiles/boost-populate
boost-populate: CMakeFiles/boost-populate-complete
boost-populate: boost-populate-prefix/src/boost-populate-stamp/boost-populate-build
boost-populate: boost-populate-prefix/src/boost-populate-stamp/boost-populate-configure
boost-populate: boost-populate-prefix/src/boost-populate-stamp/boost-populate-download
boost-populate: boost-populate-prefix/src/boost-populate-stamp/boost-populate-install
boost-populate: boost-populate-prefix/src/boost-populate-stamp/boost-populate-mkdir
boost-populate: boost-populate-prefix/src/boost-populate-stamp/boost-populate-patch
boost-populate: boost-populate-prefix/src/boost-populate-stamp/boost-populate-test
boost-populate: boost-populate-prefix/src/boost-populate-stamp/boost-populate-update
boost-populate: CMakeFiles/boost-populate.dir/build.make
.PHONY : boost-populate

# Rule to build all files generated by this target.
CMakeFiles/boost-populate.dir/build: boost-populate
.PHONY : CMakeFiles/boost-populate.dir/build

CMakeFiles/boost-populate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/boost-populate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/boost-populate.dir/clean

CMakeFiles/boost-populate.dir/depend:
	cd /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild /home/kim/Documents/code/mio/backend_webrtc_cpp/isolated_cmake_environment/build/_deps/boost-subbuild/CMakeFiles/boost-populate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/boost-populate.dir/depend

