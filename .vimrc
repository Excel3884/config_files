set clipboard=unnamed
set guifont=Source\ Code\ Pro\ 18
set encoding=utf-8


" Mapping to reload configuration
let mapleader = ","
nmap <leader>so :source ~/.vimrc<CR>

" Mapping to next tab
nmap <leader>n :tabn<CR>

" NERDTREE
nmap <leader>ne :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1

" split right
nmap <leader>sp :vsplit<CR>

" Build python file
" nnoremap <C-b> :!python3 %<CR>

" Build c file
nnoremap <C-b> :!gcc % -lm <CR>

" block cursor for insert mode
set guicursor=i:block


" Set python version (jedi)
" set pythonthreedll=C:\Users\ANGELLWITHTHREEL'S\AppData\Local\Programs\Python\Python39-32\python39.dll
" set pythonthreehome=C:\Users\ANGELLWITHTHREEL'S\AppData\Local\Programs\Python\Python39-32

" numbers
set nu
set ruler
set relativenumber

syntax on
" plugins
call plug#begin('~/.vim/plugged')

Plug 'lifepillar/vim-solarized8'
Plug 'davidhalter/jedi-vim'
Plug 'ervandew/supertab'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'vimwiki/vimwiki'
" Plug 'vim-latex/vim-latex'
Plug 'lervag/vimtex'
Plug 'morhetz/gruvbox'

call plug#end()

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_highlighting = 0


" python no-documentation
autocmd FileType python setlocal completeopt-=preview

"theme
colorscheme gruvbox
set background=dark
" set termguicolors

"disable arrow keys
map <Down> <NOP>
map <Up> <NOP>
map <Left> <NOP>
map <Right> <NOP>

" esc alt
inore jj <Esc>
inore ξξ <Esc>


" sets tab size to 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

" enable autocompletion ctrl+n to activate:
set wildmode=longest,list,full

" new tab
nnoremap <silent> <C-t> :tabnew<CR>

" delete trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e


set belloff=all " disable beep
set guioptions-=T " disable toolbar
set guioptions-=m " remove menu
set guioptions-=r  " remove scrollbar

" jedi-python settings
" let g:python_highlight_all=1
let g:python_highlight_space_errors = 0

" search
set incsearch
set nohlsearch

" cursor movement
set so=5

set nocompatible
filetype plugin on

" latex setup
let g:Tex_DefaultTargetFormat='pdf'
let Tex_FoldedSections=""
let Tex_FoldedEnvironments=""
let Tex_FoldedMisc=""


