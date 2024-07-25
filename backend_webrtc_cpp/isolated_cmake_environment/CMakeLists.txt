cmake_minimum_required(VERSION 3.14)

project(isolated_cmake_environment)

set(CMAKE_CXX_STANDARD 20)

# Include FetchContent module
include(FetchContent)

# Declare the library to fetch
FetchContent_Declare(
    fmt
    GIT_REPOSITORY https://github.com/fmtlib/fmt.git
    GIT_TAG        9.1.0
)

FetchContent_Declare(
    boost
    GIT_REPOSITORY https://github.com/boostorg/boost.git
    GIT_TAG        boost-1.85.0
)

FetchContent_Declare(
    rtaudio
    GIT_REPOSITORY https://github.com/rtaudio/rtaudio.git
    GIT_TAG        4.1.2
)

FetchContent_Declare(
    sndfile
    GIT_REPOSITORY https://github.com/libsndfile/libsndfile.git
    GIT_TAG        1.2.2
)

# Make the library available
FetchContent_MakeAvailable(fmt boost rtaudio sndfile)

# Include directories
include_directories(${CMAKE_BINARY_DIR}/_deps/libsndfile-src/include)  # Add RtAudio include path
include_directories(${CMAKE_BINARY_DIR}/_deps/rtaudio-src)  # Add libsndfile include path


include_directories(${CMAKE_BINARY_DIR})

include_directories(include)

add_executable(signaling_server.exe src/main.cpp)

# Specify the output directory for the executable
set_target_properties(signaling_server.exe PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/output
)

# Link the library to your target
target_link_libraries(signaling_server.exe PRIVATE fmt::fmt Boost::asio Boost::beast rtaudio sndfile)