call plug#begin('~/.config/nvim/bundle')


" ============== Feature ============== "

Plug 'shougo/dein.vim'

"nerd tree
Plug 'scrooloose/nerdtree' 
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Git nerd tree
Plug 'xuyuanp/nerdtree-git-plugin'

"surround
Plug 'tpope/vim-surround'

"fuzzy find
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" move the line
Plug 'matze/vim-move'

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Blammer git
Plug 'APZelos/blamer.nvim'
" Snippet
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Indext line
Plug 'Yggdroot/indentLine'

" Git Signify
Plug 'mhinz/vim-signify'

" blame the same word
Plug 'rrethy/vim-illuminate'

" Jupyter for python
Plug 'jupyter-vim/jupyter-vim'

" Startup screen
Plug 'mhinz/vim-startify'

" Px to rem
Plug 'Oldenborg/vim-px-to-rem'

" ============== UI ============== "
"Theme
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'

"ariline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Css color
Plug 'ap/vim-css-color'

" rainbow 
Plug 'junegunn/rainbow_parentheses.vim'

" ============== Language ============== "

"jsonc
Plug 'neoclide/jsonc.vim'

" C Sharp 
Plug 'OmniSharp/omnisharp-vim'

" Vue
Plug 'posva/vim-vue'

" Mark down
Plug 'tpope/vim-markdown'

" Preview markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax

" For Rust lang
Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale'

" Setup nvim for deno
Plug 'junnplus/nvim-lsp-setup'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'autozimu/LanguageClient-neovim', {
\ 'branch': 'next',
\ 'do': 'bash install.sh',
\ }

" ============== End ============== "

" Icon (away last one)
Plug 'ryanoasis/vim-devicons'

call plug#end()
