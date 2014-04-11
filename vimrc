"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bastien Faure personal .vimrc						"
"									"
" Install vim with Python and clipboard support :			"	
" apt-get install vim-gtk						"
" 									"
" Install vim vundle :							"
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle	"
"									"
" Tagbar depends on :							"
" apt-get install exuberant-ctags					"
"									"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'sjl/gundo.vim'

" Load indentation rules and plugins according to the detected filetype.
filetype off
filetype plugin indent on
filetype plugin on

set background=dark 		" Dark background
set showcmd			" Show (partial) command in status line.
set showmatch			" Show matching brackets.
set ignorecase			" Do case insensitive matching
set smartcase			" Do smart case matching
set incsearch			" Incremental search
set autowrite			" Automatically save before commands like :next and :make
set hidden             		" Hide buffers when they are abandoned
set mouse=a			" Enable mouse usage (all modes)
set cursorline			" Show line under cursor
set history=100			" Command history
set wildmode=longest:full	" Bash autocompletion
set wildmenu			" Bash autocompletion

syntax on 		" Enable syntax highlighting
colorscheme solarized	" Use the best color scheme ever

" Jump to the last position when reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

nmap <F1> :NERDTreeToggle<CR>
nmap <F2> :TagbarToggle<CR>
nmap <F3> :GundoToggle<CR>
