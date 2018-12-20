#!/bin/sh

mkdir -p .vim/autoload
curl -LSso .vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

mkdir -p .vim/bundle
cd .vim/bundle && \
  git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
cd -
