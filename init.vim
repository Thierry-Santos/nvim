call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'KarimElghamry/vim-auto-comment'
call plug#end()

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
set autoindent
set incsearch
set wildmenu
set confirm

colorscheme gruvbox
set background=dark
" Auto Comment
let g:default_inline_comment = 'c-/'

" NerdTree
autocmd VimEnter * NERDTree

" NCM2
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

" Airline
let g:airline#extensions#tabline#enabled = 1

" Maps
let mapleader="\<space>"

nnoremap <c-s> :w<cr>
nnoremap <c-q> :q<cr>
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space><cr>

nnoremap <leader>n :NERDTreeFocus<cr>
nnoremap <c-t> :NERDTreeToggle<cr>
