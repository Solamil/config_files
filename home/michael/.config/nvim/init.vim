call plug#begin('/home/michael/.config/nvim/plugged')

Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'

Plug 'vim-syntastic/syntastic'

Plug 'nvie/vim-flake8'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'scrooloose/nerdtree'

Plug 'jistr/vim-nerdtree-tabs'
Plug 'Solamil/NeoSolarized'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
call plug#end()              

set splitbelow
set splitright

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za


au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

"Flagging Unnecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set encoding=utf-8


let python_highlight_all=1
syntax on

syntax enable
set termguicolors

" hi Normal ctermbg=none
" highlight NonText ctermbg=none
colorscheme NeoSolarized 

let NERDTreeIgnore=['\.pyc$', '\~$', '.class'] "ignore files in NERDTree

set nu

set clipboard=unnamed

" Make double-<Esc> clear search highlights
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>
