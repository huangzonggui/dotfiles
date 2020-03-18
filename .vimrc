"{Basic settings
set nu
set cursorcolumn
set cursorline
" set relativenumber

" search
set hlsearch
set incsearch "实时显示查找更新
set ignorecase

colorscheme delek 
" colorscheme xcodedark

set guifont=DroidSansMono_Nerd_Font:h11

set clipboard=unnamed 

syntax on
"}

"call plug#begin('~/.vim/plugged')
"Plug 'itchyny/lightline.vim'
"call plug#end()

"neobundle
" vundle也是一个插件管理，neobundle也是一个插件管理
if has('vim_starting')
set nocompatible    
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()
filetype plugin indent on
endif

set nocompatible              " required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree' " 项目树
Plugin 'ryanoasis/vim-devicons'
"Plugin 'tiagofumo/vim-nerdtree-syntax-highlight' " nerdtree 卡顿的原因"

" 这个插件可以显示文件的Git增删状态
Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'Valloric/YouCompleteMe'
Plugin 'leafgarland/typescript-vim'
Plugin 'kien/ctrlp.vim'

Plugin 'jiangmiao/auto-pairs' " 括号自动补全
Plugin 'jakwings/vim-colors'

Plugin 'vim-colors-solarized'
Plugin 'vim-powerline'
Plugin 'scrooloose/nerdcommenter'   " commenter: \cc \cu

Plugin 'benmills/vimux'

Plugin 'mileszs/ack.vim'


call vundle#end()            " required
filetype plugin indent on    " required

let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {'dir':  '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$'}

" 将字体设置为Meslo LG S DZ Regular for Powerline 13号大小
set guifont=Meslo\ LG\ S\ DZ\ Regular\ for\ Powerline:h13

let g:Powerline_symbols = 'fancy'       " Powerline_symbols为状态栏中的箭头，unicode没有箭头
"let g:Powerline_symbols= 'unicode'

set laststatus=2                " 必须设置为2,否则状态栏不显示
set t_Co=256                    " 开启256颜色之后，colorschema在vim里好看了许多
let g:Powerline_colorscheme='solarized256'  " 状态栏使用了solarized256配色方案

"set fillchars+=stl:\ ,stlnc:\          " 状态栏如果有\\\\\或^^^^^等符号出现，添加此句再删掉此句就好了
" 开启各种补全引擎
let g:ycm_collect_identifiers_from_tags_files=1         " 开启 YCM 基于标签引擎
let g:ycm_auto_trigger = 1                  " 开启 YCM 基于标识符补全，默认为1
let g:ycm_seed_identifiers_with_syntax=1                " 开启 YCM 基于语法关键字补全
let g:ycm_complete_in_comments = 1              " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1               " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0 " 注释和字符串中的文字也会被收入补全

" Ctrl+N 打开/关闭
map <C-n> :NERDTreeToggle<CR>
" 当不带参数打开Vim时自动加载项目树
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 当所有文件关闭时关闭项目树窗格
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" 不显示这些文件
" let NERDTreeIgnore=['\.pyc$', '\~$', 'node_modules'] "ignore files in NERDTree
 let NERDTreeIgnore=['node_modules'] "ignore files in NERDTree
" 不显示项目树上额外的信息，例如帮助、提示什么的
" let NERDTreeMinimalUI=1
let NERDTreeShowLineNumbers = 1
let NERDTreeHighlightCursorline = 0
let NERDTreeWinSize = 35 

let mapleader=';' "注释\修改为；

" git state icon
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" nerdtree show folder the file in
autocmd BufEnter * lcd %:p:h 
