Setting up vim for Go.

-1- Use a recent version of vim
-2- Download vim plugin manager 
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
-3- vim +PlugInstall +qa
-4- vim +GoInstallBinaries +qa

File .vimrc should look like that:

" Time-stamp: <2020-09-14 17:21:05 (elrond@rivendell) .vimrc>

call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go'

call plug#end()

filetype off
filetype plugin indent on

set number
set noswapfile
set noshowmode
set ts=2 sw=2 sts=2 et
set backspace=indent,eol,start

" Map <leader> to comma
let mapleader=","

if has("autocmd")
        autocmd FileType go set ts=2 sw=2 sts=2 noet nolist autowrite
endif

and in .vimrc like that

elrond@rivendell [elt:0s] ~/.vim/plugged/vim-go > ll
total 236
drwxr-xr-x 18 elrond elrond   4096 Sep 14 17:23 .
drwxr-xr-x  3 elrond elrond   4096 Sep 14 17:23 ..
-rw-r--r--  1 elrond elrond    212 Sep 14 17:23 addon-info.json
drwxr-xr-x  2 elrond elrond   4096 Sep 14 17:23 assets
drwxr-xr-x  6 elrond elrond   4096 Sep 14 17:23 autoload
-rw-r--r--  1 elrond elrond 118190 Sep 14 17:23 CHANGELOG.md
-rw-r--r--  1 elrond elrond    207 Sep 14 17:23 .codecov.yml
drwxr-xr-x  2 elrond elrond   4096 Sep 14 17:23 compiler
-rw-r--r--  1 elrond elrond     60 Sep 14 17:23 .coveragerc
drwxr-xr-x  2 elrond elrond   4096 Sep 14 17:23 doc
-rw-r--r--  1 elrond elrond    627 Sep 14 17:23 Dockerfile
-rw-r--r--  1 elrond elrond     74 Sep 14 17:23 .dockerignore
-rw-r--r--  1 elrond elrond    219 Sep 14 17:23 .editorconfig
drwxr-xr-x  2 elrond elrond   4096 Sep 14 17:23 ftdetect
drwxr-xr-x  4 elrond elrond   4096 Sep 14 17:23 ftplugin
drwxr-xr-x  8 elrond elrond   4096 Sep 14 17:23 .git
drwxr-xr-x  3 elrond elrond   4096 Sep 14 17:23 .github
-rw-r--r--  1 elrond elrond    120 Sep 14 17:23 .gitignore
drwxr-xr-x  5 elrond elrond   4096 Sep 14 17:23 gosnippets
drwxr-xr-x  2 elrond elrond   4096 Sep 14 17:23 indent
-rw-r--r--  1 elrond elrond   3276 Sep 14 17:23 LICENSE
-rw-r--r--  1 elrond elrond    572 Sep 14 17:23 Makefile
drwxr-xr-x  2 elrond elrond   4096 Sep 14 17:23 plugin
-rw-r--r--  1 elrond elrond   4468 Sep 14 17:23 README.md
drwxr-xr-x  3 elrond elrond   4096 Sep 14 17:23 rplugin
drwxr-xr-x  2 elrond elrond   4096 Sep 14 17:23 scripts
drwxr-xr-x  2 elrond elrond   4096 Sep 14 17:23 syntax
drwxr-xr-x  2 elrond elrond   4096 Sep 14 17:23 templates
drwxr-xr-x  2 elrond elrond   4096 Sep 14 17:23 test
-rw-r--r--  1 elrond elrond    158 Sep 14 17:23 .vintrc.yaml
