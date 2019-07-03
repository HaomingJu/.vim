#! /usr/bin/env bash

./configure --with-features=huge \
                --enable-multibyte \
                --enable-rubyinterp=yes \
                --with-python-command=python2 \
                --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
                --enable-pythoninterp=yes \
                --enable-perlinterp=yes \
                --enable-luainterp=yes \
                --enable-cscope \
                --enable-gui=gtk2 --enable-cscope --prefix=/usr/local/bin/


