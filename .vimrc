" Load pathogen, be happy
call pathogen#runtime_append_all_bundles() 
call pathogen#helptags()

let mapleader=","
filetype plugin on
set encoding=utf8

" Some mappings to make vim on german keyboard more sane
noremap ö :
               
" set standard encryption method to blowfish (strong)
if exists('+cryptmethod') | set cryptmethod=blowfish | endif

" unmark hilighted search results
noremap <Leader>m :nohlsearch<CR>

" jump out of insert mode with 'jj'
inoremap jj <ESC>

" colors 
colorscheme desert 

" tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" start scrolling before cursor reaches border
set scrolloff=6

" yeeeaaaahh.. if you could just hilight the syntax.. that would be grreeaaaatt
syntax enable

" go where no cursor has gone before
set virtualedit=all

" line numbers are sweet
set number

" search
set incsearch
set hlsearch
set ignorecase
set smartcase

" show me my matching bracket
set showmatch

" I want to switch buffers without saving.
set hidden

set showcmd
set autoindent
set wildmenu
set wildmode=list:longest
set visualbell

" I am not quite sure whether to like this...
" set cursorline

" PLUGINS

" NERDTree
map <Leader>o :NERDTree<CR>
map <Leader>O :NERDTreeClose<CR>

" YankRing
nnoremap <silent> <F3> :YRShow<cr>
nnoremap <silent> <Leader>y :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>

" Gundo (requires Vim 7.3+)
nnoremap <F5> :GundoToggle<CR>
nnoremap <Leader>g :GundoToggle<CR>

" MiniBufExplorer
nnoremap <Leader><Tab> :MiniBufExplorer<CR>

" autosource the .vimrc file upon save
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" TwitVim settings
let twitvim_count = 100
let twitvim_enable_python = 1
