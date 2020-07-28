" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugins')

Plug 'tpope/vim-commentary'

Plug 'vim-airline/vim-airline'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-fugitive'

Plug 'preservim/nerdtree'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'nvie/vim-flake8'

Plug 'psf/black', { 'branch': 'stable' }

Plug 'sheerun/vim-polyglot'

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Completion, Go to def, ...
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi' " Python completion

" auto bracket/quote completion
Plug 'jiangmiao/auto-pairs'

Plug 'machakann/vim-highlightedyank'

Plug 'dense-analysis/ale'

Plug 'metakirby5/codi.vim'

call plug#end()

