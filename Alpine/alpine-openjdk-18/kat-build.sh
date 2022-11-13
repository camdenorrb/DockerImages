#!/bin/bash

git pull origin master

make dist-clean

export MY_FLAGS="-O3 -march=native -mtune=native -pipe -flto"

bash configure --enable-headless-only=yes --with-zlib=system --with-jvm-features=link-time-opt --with-extra-cflags="${MY_FLAGS}" --with-extra-cxxflags="${MY_FLAGS}" --with-extra-ldflags="${MY_FLAGS}" --with-native-debug-symbols=none --with-jvm-variants=server --verbose --disable-ccache --with-debug-level=release --disable-warnings-as-errors

make product-images