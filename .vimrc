" links
" https://github.com/VundleVim/Vundle.vim
" https://vim.rtorr.com/



" listen line number
set number
" enable mouse click
set mouse=a

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" turn syntax highlighting on
set t_Co=256
syntax on
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

set hlsearch     " highlight matches
set incsearch    " incremental searching
set ignorecase   " searches are case insensitive...
set smartcase    " ... unless they contain at least one capital letter

" Open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree
" When open change the focus to the file (and not the NERDTree)
autocmd! VimEnter * NERDTree | wincmd w
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
filetype off
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'ntpeters/vim-better-whitespace'
let g:better_whitespace_enabled=1
"let g:strip_whitespace_on_save = 1
let g:strip_whitespace_on_save=1
"Plugin 'bronson/vim-trailing-whitespace'
"colorscheme horizon
call vundle#end()
filetype plugin indent on
