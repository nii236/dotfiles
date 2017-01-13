let mapleader = ','

"map <C-n> :bn<CR>
"map <C-b> :bp<CR>
"map <C-=> :cnext<CR>
"map <C--> :cprevious<CR>
"nnoremap <leader>a :cclose<CR>
"map <C-p> :FZF<CR>
map <Leader>d :bd<CR>

nnoremap <C-l> :buffers<CR>:buffer<Space>
nnoremap <C-b>  :bp<CR>
nnoremap <C-n>  :bn<CR>

nmap <leader>s<left>   :leftabove  vnew<CR>
nmap <leader>s<right>  :rightbelow vnew<CR>
nmap <leader>s<up>     :leftabove  new<CR>
nmap <leader>s<down>   :rightbelow new<CR>

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin('~/.vim/plugged')
Plug 'gmarik/Vundle.vim'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'majutsushi/tagbar'
Plug 'fatih/molokai'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dispatch'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-vinegar'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'ervandew/supertab'
call plug#end()
filetype plugin indent on

let g:molokai_original=1
let g:go_fmt_command = "goimports"
set tabstop=4
set shiftwidth=2
set autoindent
set ignorecase
set smartcase
set number
set ruler
set autowrite
syntax on
set backspace=indent,eol,start

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_list_type = "quickfix"

let g:go_metalinter_autosave = 1


colorscheme molokai

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1

autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

map <leader>b :cprevious<CR>
map <leader>n :cnext<CR>
nnoremap <leader>a :cclose<CR>

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-n>"


" Allow netrw to remove non-empty local directories
let g:netrw_localrmdir='rm -r'
