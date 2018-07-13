cmake_minimum_required(VERSION 3.10)
project(emitter)

set(CMAKE_CXX_STANDARD 11)

include_directories(.)

add_executable(emitter
        connection.cpp
        connection.h
        main.cpp time_funcs.h)
