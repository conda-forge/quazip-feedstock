#!/bin/bash

mkdir build

CXXFLAGS="${CXXFLAGS} -D_LIBCPP_DISABLE_AVAILABILITY"

cmake -B build -S . ${CMAKE_ARGS} \
    -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_INSTALL_LIBDIR=lib \
    -DCMAKE_CXX_FLAGS="${CXXFLAGS}"
cmake --build build
cmake --install build

