#!/bin/sh

mkdir -p .vim/bundle
cd .vim/bundle && \
  git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
cd -

cd .vim/bundle && \
  git clone git://github.com/airblade/vim-gitgutter.git
cd -
