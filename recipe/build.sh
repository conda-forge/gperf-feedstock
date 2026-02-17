#!/bin/bash

export CXXFLAGS="${CXXFLAGS} -Wno-register"

./configure --prefix="${PREFIX}"
make -j${CPU_COUNT}
if [[ "$CONDA_BUILD_CROSS_COMPILATION" != 1 || "${CROSSCOMPILING_EMULATOR}" != "" ]]; then
    make -j 1 check
fi
make install
