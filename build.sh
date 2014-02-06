#!/bin/bash

export PATH=$PWD/clang+llvm-3.2-x86_64-linux-ubuntu-12.04/bin:$PATH
export LD_LIBRARY_PATH=dxr/trilite/
dxr-build.py -f dxr.config