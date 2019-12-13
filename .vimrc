set nocompatible
filetype plugin indent on

" Reload buffer at last position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Nice-to-have but lags badly
"au BufEnter * setlocal cursorline
"au BufLeave * setlocal nocursorline

let g:airline_right_sep=''
let g:airline_left_sep=''

syntax on

set cursorline
set incsearch
set hlsearch
set ignorecase

set fillchars+=vert:│
set ttymouse=xterm2
set mouse=a

set number
"set relativenumber

set whichwrap+=<,>,[,]

let g:indentLine_concealcursor=0

set wrap!

set encoding=UTF-8

"set background=dark
set termguicolors

nmap <C-S-L> :StripWhitespace<CR>:Autoformat<CR>

"set completeopt-=preview
set colorcolumn=80

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

set tabstop=2
set shiftwidth=2
set expandtab

set backspace=indent,eol,start

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin 'kshenoy/vim-signature'
Plugin 'airblade/vim-gitgutter'
Plugin 'sjl/badwolf'
"Plugin 'ayu-theme/ayu-vim'
"Plugin 'sickill/vim-monokai'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'junegunn/fzf.vim'
"Plugin 'scrooloose/nerdtree'
"Plugin 'tpope/vim-fugitive'
"Plugin 'zxqfl/tabnine-vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'Yggdroot/indentLine'
"Plugin 'romainl/flattened'
Plugin 'ryanoasis/vim-devicons'
Plugin 'rhysd/vim-clang-format'
" Plugin 'Chiel92/vim-autoformat'

" Plugin 'easymotion/vim-easymotion'
"Plugin 'kshenoy/vim-signature'
Plugin 'ntpeters/vim-better-whitespace'
" Plugin 'airblade/vim-gitgutter'

Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'jistr/vim-nerdtree-tabs'

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
if exists("g:loaded_webdevicons")
        call webdevicons#refresh()
endif

let g:indentLine_color_gui = '#45413b'
let g:indentLine_char = '┊'
let g:indentLine_filetypeExclude = [ 'markdown', 'json' ]

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:airline_powerline_fonts = 1
let g:airline_theme = 'zenburn'

colorscheme badwolf
