cmake_minimum_required(VERSION 3.28)
project(MyProject)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 20)

# Set the Boost directory (update this path to your Boost installation path)
set(BOOST_ROOT "build/include/boost_1_85_0")

# Find Boost
find_package(Boost 1.85.0 REQUIRED)

# Include Boost headers
include_directories(${Boost_INCLUDE_DIRS})

# Add the executable
add_executable(main.exe src/main.cpp)

# Link Boost libraries
target_link_libraries(main.exe ${Boost_LIBRARIES})
