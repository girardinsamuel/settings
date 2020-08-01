" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugins')

" theme plugin : still in progress, maybe try :
" https://github.com/joshdick/onedark.vim ?
Plug 'gruvbox-community/gruvbox'

Plug 'tpope/vim-commentary'

Plug 'vim-airline/vim-airline'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-fugitive'

" not used a lot with fuzzy file search
Plug 'preservim/nerdtree'

Plug 'sheerun/vim-polyglot'

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Completion, Go to def = Intellisense for all languages
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}

" Python linter and fixer
Plug 'dense-analysis/ale'

" auto bracket/quote completion
Plug 'jiangmiao/auto-pairs'

Plug 'machakann/vim-highlightedyank'

Plug 'metakirby5/codi.vim'

Plug 'tpope/vim-surround'

call plug#end()
