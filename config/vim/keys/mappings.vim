" Remap leader key to ,
:let mapleader = ","

" shortcut for reloading vim config
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

" file browsing
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>r :Rg<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>c :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
" Enable folding with the spacebar
nnoremap <space> za
" Toggle filetree (even if not used anymore now)
map <C-n> :NERDTreeToggle<CR>
" Git
nmap <Leader>gs :G<CR>
nmap <Leader>gf :diffget //2<CR>
nmap <Leader>gj :diffget //3<CR>

" toggle lower/upper CASE on a word
inoremap <C-U> viwu<Esc>
nnoremap <C-U> viwU<Esc>

" better tabbing
vnoremap < <gv
vnoremap > >gv
