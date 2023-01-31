#!/bin/bash

if [[ ! -d .emacs.src ]]
then
  git clone https://git.savannah.gnu.org/git/emacs.git .emacs.src
fi

cd .emacs.src

if [[ ! -f configure ]]
then
  ./autogen.sh
fi
./configure "--prefix=$(dirname "$(pwd)")" --with-json --with-pgtk --with-x-toolkit=gtk3 --with-xwidgets --with-imagemagick --with-mailutils --with-tree-sitter --with-native-compilation=aot --without-pop
make "-j$(nproc)"
make install

