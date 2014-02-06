#!/bin/bash

git submodule update --init --recursive

sudo apt-get install python-pip pkg-config libsqlite3-dev python-jinja2

wget http://llvm.org/releases/3.2/clang+llvm-3.2-x86_64-linux-ubuntu-12.04.tar.gz
tar -xvf clang+llvm-3.2-x86_64-linux-ubuntu-12.04.tar.gz
export PATH=$PWD/clang+llvm-3.2-x86_64-linux-ubuntu-12.04/bin:$PATH
export LLVM_CONFIG=$PWD/clang+llvm-3.2-x86_64-linux-ubuntu-12.04/bin/llvm-config

cd dxr
sudo pip install -r requirements.txt
make
sudo python setup.py install
cd tests/test_basic && make