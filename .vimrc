set nu
set hlsearch
colorscheme delek 
syntax on

"call plug#begin('~/.vim/plugged')
"Plug 'itchyny/lightline.vim'
"call plug#end()

"neobundle
" vundle也是一个插件管理，neobundle也是一个插件管理
"if has('vim_starting')
"set nocompatible    
"set runtimepath+=~/.vim/bundle/neobundle.vim/
"call neobundle#begin(expand('~/.vim/bundle/'))
"NeoBundleFetch 'Shougo/neobundle.vim'
"call neobundle#end()
"filetype plugin indent on
"endif

"set nocompatible              " required
"filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree' " 项目树
Plugin 'ryanoasis/vim-devicons'
" 这个插件可以显示文件的Git增删状态
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
call vundle#end()            " required
filetype plugin indent on    " required
