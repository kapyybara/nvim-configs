"Ag
let g:ackprg = 'ag --vimgrep'

"NERDTree
map <C-b> :NERDTreeToggle<CR>
map <C-i> :NERDTreeFind<CR>
let g:NERDTreeWinSize = 18 
let g:NERDTreePatternMatchHighlightFullName = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let g:NERDTreeShowBookmarks=1
"let g:NERDTreeDirArrowExpandable = '>'
"let g:NERDTreeDirArrowCollapsible = 'v'
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
" Auto close
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
syntax enable
if exists("g:loaded_webdevicons")
	call webdevicons#refresh()
endif

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✏️',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

" Theme 
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme nord  
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
:hi normal guibg=000000


" Fzf
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-a': 'vsplit'
  \}
let $FZF_DEFAULT_COMMAND = 'ag -g ""'


nmap <Leader>f [fzf-p]
xmap <Leader>f [fzf-p]

nnoremap <silent> [fzf-p]p     :<C-u>FzfPreviewFromResourcesRpc project_mru git<CR>
nnoremap <silent> [fzf-p]gs    :<C-u>FzfPreviewGitStatusRpc<CR>
nnoremap <silent> [fzf-p]ga    :<C-u>FzfPreviewGitActionsRpc<CR>
nnoremap <silent> [fzf-p]b     :<C-u>FzfPreviewBuffersRpc<CR>
nnoremap <silent> [fzf-p]B     :<C-u>FzfPreviewAllBuffersRpc<CR>
nnoremap <silent> [fzf-p]o     :<C-u>FzfPreviewFromResourcesRpc buffer project_mru<CR>
nnoremap <silent> [fzf-p]<C-o> :<C-u>FzfPreviewJumpsRpc<CR>
nnoremap <silent> [fzf-p]g;    :<C-u>FzfPreviewChangesRpc<CR>
nnoremap <silent> [fzf-p]/     :<C-u>FzfPreviewLinesRpc --add-fzf-arg=--no-sort --add-fzf-arg=--query="'"<CR>
nnoremap <silent> [fzf-p]*     :<C-u>FzfPreviewLinesRpc --add-fzf-arg=--no-sort --add-fzf-arg=--query="'<C-r>=expand('<cword>')<CR>"<CR>
nnoremap          [fzf-p]gr    :<C-u>FzfPreviewProjectGrepRpc<Space>
xnoremap          [fzf-p]gr    "sy:FzfPreviewProjectGrepRpc<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"
nnoremap <silent> [fzf-p]t     :<C-u>FzfPreviewBufferTagsRpc<CR>
nnoremap <silent> [fzf-p]q     :<C-u>FzfPreviewQuickFixRpc<CR>
nnoremap <silent> [fzf-p]l     :<C-u>FzfPreviewLocationListRpc<CR>

let g:fzf_preview_command = 'batcat --color=always --plain {-1}'

" Snippet
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<tab>"

" Move
let g:move_key_modifier = 'C'

" syntax javascipt
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:javascript_plugin_ngdoc = 1
" let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
set conceallevel=1
set concealcursor=n

" Rainbow
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['{', '}'], ['[', ']'], ]
autocmd FileType javascript syntax clear jsFuncBlock
augroup rainbow_lisp
  autocmd!
	autocmd FileType lisp,clojure,scheme,javascript,html,typescript,python RainbowParentheses
augroup END
let g:rainbow#blacklist = [248, 238]

" Git Blammer
let g:blamer_enabled = 1
let g:blamer_delay = 500 
let g:blamer_relative_time = 1

" Git Signify in the left
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'
let g:signify_sign_show_count = 0
let g:signify_sign_overwrite = 1
let g:signify_sign_background = 0
highlight SignColumn ctermbg=NONE cterm=NONE guibg=NONE gui=NONE

" Airline
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1

" vim-vue
let g:vue_pre_processors = 'detect_on_enter'

" Markdown runtime
let g:markdown_fenced_languages = ['html', 'python', 'javascript']

let g:mkdp_command_for_global = 1
let g:mkdp_page_title = '!wku - 「${name}」'
let g:mkdp_markdown_css = '../services/markdown.css'


let g:indentLine_concealcursor = '-'

" C#
let g:OmniSharp_highlighting = 3
let g:OmniSharp_selector_ui = 'fzf'
let g:OmniSharp_diagnostic_overrides = {
\ 'IDE0010': {'type': 'I'},
\ 'IDE0055': {'type': 'W', 'subtype': 'Style'},
\ 'CS8019': {'type': 'None'},
\ 'RemoveUnnecessaryImportsFixable': {'type': 'None'}
\}
let g:OmniSharp_server_use_net6 = 1

nnoremap <C-o><C-u> :OmniSharpFindUsages<CR>
nnoremap <C-o><C-d> :OmniSharpGotoDefinition<CR>
nnoremap <C-o><C-d><C-p> :OmniSharpPreviewDefinition<CR>
nnoremap <C-o><C-r> :!dotnet run

autocmd BufWritePost *.cs :OmniSharpCodeFormat

" For Rust lang
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
let g:LanguageClient_serverCommands = {
\ 'rust': ['rust-analyzer'],
\ }

" MiniMap
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
let g:minimap_highlight_search = 1
let g:minimap_git_colors = 1
