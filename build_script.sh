#!/bin/sh

wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz
tar -xzvf Python-2.7.18.tgz
cd Python-2.7.18/ || return 1
./configure --prefix=/mnt/storage/temp/python2-build --enable-shared --with-threads --enable-optimizations --with-lto --enable-ipv6 --enable-unicode=ucs4 --with-system-ffi --with-system-expat --with-dbmliborder=gdbm:ndbm --without-ensurepip
make && make install
