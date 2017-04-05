#!/bin/bash
GDB_VERSION='7.12'
wget https://ftp.gnu.org/gnu/gdb/gdb-$GDB_VERSION.tar.gz
tar zxvf gdb-$GDB_VERSION.tar.gz
cd gdb-$GDB_VERSION
./configure
make -j $(grep processor < /proc/cpuinfo | wc -l)
sudo cp gdb/gdb /usr/bin/gdb