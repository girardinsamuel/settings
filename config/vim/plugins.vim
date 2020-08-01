" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugins')

Plug 'gruvbox-community/gruvbox'

Plug 'tpope/vim-commentary'

Plug 'vim-airline/vim-airline'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-fugitive'

Plug 'preservim/nerdtree'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'sheerun/vim-polyglot'

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Completion, Go to def, ...
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}

" Python specifics
Plug 'dense-analysis/ale'

" auto bracket/quote completion
Plug 'jiangmiao/auto-pairs'

Plug 'machakann/vim-highlightedyank'

" Plug 'dense-analysis/ale'

Plug 'metakirby5/codi.vim'

Plug 'tpope/vim-surround'

call plug#end()
