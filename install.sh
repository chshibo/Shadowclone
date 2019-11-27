#!/bin/bash

# go to the home directory and creat directory first
mkdir -p ~/tools
pushd ~/tools

# download llvm
git clone git@github.com:llvm/llvm-project.git

#install
pushd llvm-project
mkdir build
cd build
cmake  -DLLVM_ENABLE_PROJECTS="clang;compiler-rt" ../llvm
make -j4 # n is the number of thread
popd
popd

echo 'export PATH=~/tools/llvm-project/build/bin:$PATH' >> ~/.bashrc
source ~/.bashrc