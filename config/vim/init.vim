:so ~/.config/nvim/general.vim
:so ~/.config/nvim/keys/mappings.vim
:so ~/.config/nvim/plugins.vim
:so ~/.config/nvim/linting.vim

let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'
colorscheme gruvbox
set background=dark
let g:gruvbox_italicize_comments='1'

" highlight trailing whitespaces only in normal mode (not when typing)
highlight TrailingWhitespace ctermbg=red guibg=red
match TrailingWhitespace /\s\+\%#\@<!$/

" highlight quickly copied(yanked) zone
augroup highlight_yank
  autocmd!
  autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 1000)
augroup END

" move selected block easily and respected indentation
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" for searching in files with :Files, tell rg not to search in filenames
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

" vim-gitgutter
set updatetime=100

" file tree
autocmd StdinReadPre * let s:std_in=1

" Python
let g:python_host_prog = '/Users/samuel/.pyenv/versions/2.7.17/bin/python2'
let g:python3_host_prog = '/Users/samuel/.pyenv/versions/3.8.3/bin/python'
let python_highlight_all=1

" autocomplete close info window after completion
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" vim-airline configuration
" display buffers when only one tab
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1

