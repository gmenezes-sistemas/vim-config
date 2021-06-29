" VimPlug
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'

call plug#end()

" Vim Theme
colorscheme gruvbox
set background=dark

" Line Number
set number

" Encoding
set encoding=utf-8

" Clipboard
set clipboard=unnamedplus

" FileTypes Configuration
filetype plugin indent on
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2

" Plugins Configuration

" vim-airline/vim-airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_symbols={}
let g:airline_symbols.colnr = ' ℅:'
let g:airline#extensions#tabline#formatter = 'unique_tail'

" preservim/nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
