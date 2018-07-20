cmake_minimum_required(VERSION 3.7.2)
project(receiver)

set(CMAKE_CXX_STANDARD 11)

add_executable(receiver main.cpp Connector.cpp Connector.h)