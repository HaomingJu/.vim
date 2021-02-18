#! /usr/bin/env bash

# 支持clipboard
sudo apt install -y libx11-dev libxtst-dev libxt-dev libsm-dev libxpm-dev

./configure \
    --with-features=huge \
    --enable-multibyte \
    --enable-rubyinterp=yes \
    --enable-python3interp=yes \
    --with-python3-command=/usr/bin/python3 \
    --with-python3-config-dir=/usr/lib/python3.6/config-3.6m-x86_64-linux-gnu \
    --enable-perlinterp=yes \
    --enable-luainterp=yes  \
    --enable-cscope \
    --with-x

make -j8
sudo make install
