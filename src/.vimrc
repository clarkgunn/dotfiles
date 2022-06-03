set scrolloff=8
set number
set relativenumber
let g:VM_Enabled = 1
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
let g:netrw_liststyle = 3 " Vim File Tree view
let g:netrw_banner = 0

" Shift lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

filetype plugin indent on
syntax on
 
call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rust-lang/rust.vim'
Plug 'github/copilot.vim'
Plug 'joshdick/onedark.vim'
call plug#end() 


colorscheme onehalfdark

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

let mapleader = " "
nnoremap <leader>t :Lexplore<CR>
nnoremap <leader><CR> :so ~/.vimrc<CR>
