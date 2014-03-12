call pathogen#infect()

filetype on
filetype plugin indent on

set hidden

set nohlsearch
syntax on

set tabstop=2
set shiftwidth=2
set expandtab

set splitbelow
set splitright

map <F2> :NERDTreeToggle<CR>
imap <F3> #
imap § #

let mapleader = ","
let g:CommandTMaxHeight = 10

" Quicker paragraph formatting
nnoremap Q gqap
vnoremap Q gq

" CtrlP optimisation: use Silver Searcher if available
" From <https://github.com/nickstenning/dotvim/blob/1146bf21/_vimrc#L113-L124>
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

map <Leader>t :CtrlP<CR>
map <Leader>a :Ack! 
map <Leader>aa :Ack! --all 
map <Leader>n :set number!<CR>
map <Leader>g :GitGutterToggle<CR>

set updatetime=750
let g:gitgutter_sign_column_always = 1
let g:gitgutter_enabled = 0

let g:vim_markdown_folding_disabled=1

let NERDTreeIgnore=['\.pyc$']
set wildignore+=*/tmp/*
set wildignore+=*/_site/*

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=DarkRed
autocmd FileType * highlight ExtraWhitespace ctermbg=red guibg=DarkRed
autocmd BufEnter * highlight ExtraWhitespace ctermbg=red guibg=DarkRed
autocmd Syntax * syn match ExtraWhitespace /\s\+$/ containedin=ALL

set colorcolumn=+1
autocmd BufEnter * highlight ColorColumn guibg=#FFDDDD
