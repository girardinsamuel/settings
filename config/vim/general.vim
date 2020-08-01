set nocompatible
filetype plugin on
syntax on

" Tabs and spaces, Silicon Valley copyright :)
set autoindent " always set autoindenting on
set copyindent " copy the previous indentation on autoindenting
set expandtab " expand tabs by default (overloadable per file type)
set shiftround " use multiple of shiftwidth when indenting with '<' and '>'
set smartindent
set smarttab " insert tabs on the start of a line according to shiftwidth, not tabstop
" default behavior (2 spaces)
set shiftwidth=2 " number of spaces to use for autoindenting
set softtabstop=2 " when hitting <BS>, pretend like a tab is removed, even if spaces
set tabstop=2 " tabs are n spaces

set mouse=a " be able to use mouse
" use system clipboard, not only vim registers to paste from
set clipboard=unnamedplus

" case-insensitive search with lowercase and sensitive otherwise
set smartcase

" TESTING (settings which might be removed if not ok/cool)
set cursorline
set ruler
" END TESTING

set path+=**
set wildmenu
" Enable folding
set foldmethod=indent
set foldlevel=99
" classic stuff
" both absolute and relative line numbers are enabled by default, which produces “hybrid” line numbers. When entering insert mode, relative line numbers are turned off, leaving absolute line numbers turned on
set number  relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" authorize comments in json files (jsonc), for coc-settings.json for example
autocmd FileType json syntax match Comment +\/\/.\+$+

set encoding=utf-8
