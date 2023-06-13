"base settings
set shiftwidth=4
set tabstop=4
set expandtab
set textwidth=0
set autoindent
set hlsearch
set clipboard=unnamed
set number
syntax on

set background=dark
colorscheme hybrid

if has('vim_starting')
    let &t_SI .= "\e[6 q"
    let &t_EI .= "\e[2 q"
    let &t_SR .= "\e[4 q"
endif

"base keybinding
inoremap <silent> jj <ESC>
let mapleader = "\<space>"

"Plugin
call plug#begin()
" Plug 'ntk148v/vim-horizon'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'cohama/lexima.vim'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
call plug#end()

"vim-horizon
" set termguicolors
" set t_Co=256i
" colorscheme horizon

"Fern
nnoremap <leader>fb :Fern . -reveal=% -drawer -toggle -width=30<CR>
nnoremap <leader>fh :History . -reveal=% -drawer -toggle -width=30<CR>
let g:fern#renderer = 'nerdfont'

"fzf
let g:fzf_preview_window = ['right,50%']
nnoremap <leader>ff :Files .<CR>

"coc
let g:coc_disable_startup_warning = 1

