""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ~/.vimrc - Bastien Faure                                                     "
"                                                                              "
" Install vim vundle:                                                          "
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim  "
"                                                                              "
" Remove vertical split bar background (VertSplit) inside colorscheme          "
"                                                                              " 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'sjl/gundo.vim'
Plugin 'aperezdc/vim-template'
Plugin 'scrooloose/syntastic'

" Javascript
Plugin 'editorconfig/editorconfig-vim'
Plugin 'pangloss/vim-javascript'

" Vim Org-mode
Plugin 'tpope/vim-speeddating'
Plugin 'vim-scripts/utl.vim'
Plugin 'jceb/vim-orgmode'

call vundle#end()

filetype plugin indent on   " Load indentation rules and plugins according to the detected filetype
syntax on                   " Enable syntax highlighting

set background=dark         " Dark background
set showcmd                 " Show (partial) command in status line
set showmatch               " Show matching brackets
set ignorecase              " Do case insensitive matching
set smartcase               " Do smart case matching
set incsearch               " Incremental search
set autowrite               " Automatically save before commands like :next and :make
set hidden                  " Hide buffers when they are abandoned
set mouse=a                 " Enable mouse usage (all modes)
set history=100             " Command history
set wildmode=longest:full   " Bash autocompletion
set wildmenu                " Bash autocompletion
set tabstop=4               " Change width of TAB character
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set nowrap
set colorcolumn=80
set conceallevel=2
set fillchars=vert:\│
set wildmode=full

let g:solarized_termtrans = 1   " For terminals with transparency
colorscheme solarized           " Use the best color scheme ever
let g:templates_no_autocmd = 1  " Disable automatic insertion of template
let jshint2_read = 0            " Lint JavaScript files after reading it
let jshint2_save = 0            " Lint JavaScript files after saving it
let g:syntastic_javascript_checkers = ['jshint']

let g:javascript_conceal = 0
let g:javascript_conceal_function   = 'ƒ'
let g:javascript_conceal_return     = '→'
let g:javascript_ignore_javaScriptdoc = 1

let g:gundo_prefer_python3 = 1

" Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

map <F1> :NERDTreeToggle<CR>
nmap <F2> :GundoToggle<CR>
