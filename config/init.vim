set nocompatible
filetype plugin on
set autoindent
syntax on

" use system clipboard, not only vim registers to paste from
set clipboard^=unnamedplus

" case-insensitive search with lowercase and sensitive otherwise
set smartcase

set path+=**
set wildmenu

" Remap leader key to ,
:let mapleader = ","

" command for reloading vim config
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>

" move between buffers more easily
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>p :bp<CR>

"split navigations
nnoremap <Leader>j <C-W><C-J><CR>
nnoremap <Leader>k <C-W><C-K><CR>
nnoremap <Leader>l <C-W><C-L><CR>
nnoremap <Leader>h <C-W><C-H><CR>
nnoremap <Leader>v <C-W>v
nnoremap <Leader>h <C-W>h
nnoremap <Leader>w <C-W>

" clear search results quickly
nnoremap <CR> :noh<CR>

" highlight trailing whitespaces only in normal mode (not when typing)
highlight TrailingWhitespace ctermbg=red guibg=red
match TrailingWhitespace /\s\+\%#\@<!$/

" highlight quickly copied(yanked) zone
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 1000)
augroup END

" File browsing
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>r :Rg<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>

" for searching in files with :Files, tell rg not to search in filenames
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)


" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

" vim-gitgutter
set updatetime=100
" file tree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" classic stuff
" both absolute and relative line numbers are enabled by default, which produces “hybrid” line numbers. When entering insert mode, relative line numbers are turned off, leaving absolute line numbers turned on
set number  relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set tw=79
set colorcolumn=80

" flagging unnecessary whitespaces
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Python
let g:python_host_prog = '/Users/samuel/.pyenv/versions/2.7.17/bin/python2'
let g:python3_host_prog = '/Users/samuel/.pyenv/versions/3.8.3/bin/python'
let python_highlight_all=1
syntax on

" au BufNewFile,BufRead *.py
"     \ set tabstop=4
"     \ set softtabstop=4
"     \ set shiftwidth=4
"     \ set textwidth=79
"     \ set expandtab
"     \ set autoindent
"     \ set fileformat=unix

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" " Web
" au BufNewFile,BufRead *.js, *.html, *.css
"     \ set tabstop=2
"     \ set softtabstop=2
"     \ set shiftwidth=2

" autocomplete close info window after completion
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" vim-airline configuration
" display buffers when only one tab
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1

let g:deoplete#enable_at_startup = 1

" Run black on save of python files 
autocmd BufWritePre *.py execute ':Black'

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Plug 'Valloric/YouCompleteMe'

Plug 'tpope/vim-commentary'

Plug 'vim-airline/vim-airline'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-fugitive'

Plug 'preservim/nerdtree'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'vim-syntastic/syntastic'

Plug 'nvie/vim-flake8'

Plug 'psf/black', { 'branch': 'stable' }

Plug 'sheerun/vim-polyglot'

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi' " Python completion

" auto bracket/quote completion
Plug 'jiangmiao/auto-pairs'

Plug 'machakann/vim-highlightedyank'

Plug 'dense-analysis/ale'

call plug#end()

