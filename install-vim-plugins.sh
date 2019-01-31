#!/bin/sh

mkdir -p .vim/autoload
curl -LSso .vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

mkdir -p .vim/bundle
cd .vim/bundle && \
  git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
cd -

cd .vim/bundle && \
  git clone git://github.com/airblade/vim-gitgutter.git
cd -

cd ~/.vim/bundle && \
  git clone https://github.com/joukevandermaas/vim-ember-hbs.git
cd -
