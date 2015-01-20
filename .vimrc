
" We don't need vi compatibility
set nocompatible
filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" Bundles
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-rails.git'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tomasr/molokai'
Plugin 'chriskempson/base16-vim'

call vundle#end()

" Basic settings
set nowrap        " don't wrap lines
set tabstop=2     " a tab is two spaces
set expandtab			" use spaces instead of tabs
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set nobackup	  " don't create backup files
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*pyo,*.class,.git,env/**
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

" Let vim detect file types
filetype plugin indent on

" Key remaps

" Change the mapleader from \ to ,
let mapleader=";"

" Let's remap our evil little arrow keys
inoremap	<Up>	<NOP>
inoremap 	<Down>	<NOP>
inoremap	<Left>	<NOP>
inoremap	<Right>	<NOP>
noremap		<Up>	<NOP>
noremap		<Down>	<NOP>
noremap		<Left>	<NOP>
noremap		<Right>	<NOP>

" CtrlP
let g:ctrlp_map = '<leader>t'

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Toggle paste mode
set pastetoggle=<F2>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $HOME/.vimrc<CR>
nmap <silent> <leader>sv :so $HOME/.vimrc<CR>

" Let us use jj instead of ESC
inoremap jj <ESC>

" Split windows
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" GUI settings
if has("mac")
  let g:main_font = "Menlo:h9"
  let g:small_font = "Menlo:h9"
else
  let g:main_font = "Inconsolata-g\\ 9"
  let g:small_font = "Inconsolata-g\\ 9"
endif

syntax enable
set background=dark
colorscheme base16-default

if has("gui_running")
  exe "set guifont=" . g:main_font
  set background=dark
  colorscheme molokai
  " No toolbars
  set guioptions-=T
endif
