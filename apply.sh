#!/bin/bash
#
# apply.sh
#
# Author: Lain Musgrove (lain.musgrove@hearst.com)
# Date: Tuesday October 24, 2023
#

~/.base16/apply.sh "ekvoli-$1"
cp ./colors/*.vim ~/.vim/user-plugs/ekvoli-ng/colors/
sed -i "s/^colorscheme.*/colorscheme ekvoli-$1/" ~/.vim/highlight.vim
