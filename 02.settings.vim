filetype plugin on
filetype plugin indent on

autocmd BufEnter * :set scroll=5
syntax on

set encoding=UTF-8
set mouse=a 
set number
set nofixeol
set nowrap
set incsearch 
set hlsearch 
set tabstop=2
set softtabstop=0
set shiftwidth=2
set hidden
set nobackup
set nowritebackup

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" fzf_action
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-x': 'vsplit'
  \}

"auto close brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ` ``<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Resize the tab
nnoremap <C-Up> <Cmd>resize -2<CR>
nnoremap <C-Down> <Cmd>resize +2<CR>
nnoremap <C-Left> <Cmd>vertical resize -2<CR>
nnoremap <C-Right> <Cmd>vertical resize +2<CR>

nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle


"ignore the cmt error in JSON file
autocmd FileType json syntax match Comment +\/\/.\+$+

" Tab width = 4 when .cs
autocmd Filetype cs setlocal shiftwidth=4 softtabstop=4

" Toggle terminal
nnoremap <silent> <leader>tm :below 5sp term://pwsh <CR>



