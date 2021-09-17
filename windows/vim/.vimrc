" Plugins
execute pathogen#infect()
set nocompatible
filetype off "required for vundle
set rtp+=~/.vim/bundle/Vundle.vim "runtime path to include vundle
call vundle#begin()
Plugin 'gmarik/Vundle.vim'		"Plugin manager
Plugin 'scrooloose/syntastic'	"syntax error checker
Plugin 'flazz/vim-colorschemes'	"colorschemes
call vundle#end()

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" #c++14
let g:syntastic_cpp_compiler = "g++"
let g:syntastic_cpp_compiler_options = "-std=c++11 -Wall -Wextra -Wpedantic"

" Interface
syntax enable	"syntax highlighting
set number		"show line numbering
set so=7		"leave some lines when scrolling

" Indent
set tabstop=4
set shiftwidth=0
set smartindent autoindent
set expandtab

" Search
set incsearch	"search as you type
set hlsearch	"highlight search
set ignorecase	"ignore case when searching
set smartcase

" Behaviour
set mouse=a		"enable mouse
set wildmenu	"enable autocompletion
set vb t_vb=	"disable visual bell

" Backup files
set backup
set undofile
set backupdir=~/.vim/backup
set undodir=~/.vim/undo
set directory=~/.vim/tmp

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif

