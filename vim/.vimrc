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

#set smartindent
#set smarttab
#set autoindent

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


