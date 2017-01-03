"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" vim_vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" visual
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set number 		    " show line numbers
syntax on           " syntax highlighting
colorscheme torte	" nice ones:desert,evening,koehler,pablo,torte
set title           " show title in console title bar
set ls=2
set ruler           " show the cursor position all the time
set wrap


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" behavior
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set history=1000
map q <Nop> 		"turn off recording
set nocompatible	"no vi compatibility
set ignorecase		"ignore case when searching
set incsearch 		"jump to match while searching
set hlsearch		"highlight search results

set tabstop=4      "numbers of spaces of tab character
set shiftwidth=4   "numbers of spaces to (auto)indent
set expandtab      "all tabs will be spaces

set modeline

"red background for text after 100
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%100v.\+/

"red line by 80
"if exists('+colorcolumn')
"    set colorcolumn=80
"else
"    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
"endif

"Show hline the insert, otherwise not
augroup CursorLine
  au!
  au VimEnter,InsertEnter,BufWinEnter * setlocal cursorline
  au InsertLeave * setlocal nocursorline
augroup END


