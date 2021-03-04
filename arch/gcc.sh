#!/bin/bash
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"/../

CFLAGS=""

CC=gcc \
CXX=g++ \
cmake \
    -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DCMAKE_C_FLAGS="${CFLAGS}" \
    -DCMAKE_INSTALL_PREFIX="/srv/scratch/jgwohlbier/helib_install" \
    -DENABLE_TEST=ON \
    -DPACKAGE_BUILD=ON \
    $dir
