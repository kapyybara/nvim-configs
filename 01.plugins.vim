call plug#begin('~/.config/nvim/bundle')

Plug 'shougo/dein.vim'

"jsonc
Plug 'neoclide/jsonc.vim'

"nerd tree
Plug 'scrooloose/nerdtree' 
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Git nerd tree
Plug 'xuyuanp/nerdtree-git-plugin'

"Theme
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'

" Indext line
Plug 'Yggdroot/indentLine'

"ariline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"surround
Plug 'tpope/vim-surround'

"fuzzy find
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Css color
Plug 'ap/vim-css-color'

" move the line
Plug 'matze/vim-move'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Snippet
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" syntax javascript
Plug 'pangloss/vim-javascript'

" jsx syntax
Plug 'mxw/vim-jsx'

" rainbow
Plug 'junegunn/rainbow_parentheses.vim'

" Blammer git
Plug 'APZelos/blamer.nvim'

" Git Signify
Plug 'mhinz/vim-signify'

" Jupyter for python
Plug 'jupyter-vim/jupyter-vim'

" Vue
Plug 'posva/vim-vue'

" Mark down
Plug 'tpope/vim-markdown'

" Preview markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Startup screen
Plug 'mhinz/vim-startify'

" Px to rem
Plug 'Oldenborg/vim-px-to-rem'

" C Sharp 
Plug 'OmniSharp/omnisharp-vim'

Plug 'rrethy/vim-illuminate'

" Icon (away last one)
Plug 'ryanoasis/vim-devicons'

call plug#end()
