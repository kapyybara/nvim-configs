"Ag
let g:ackprg = 'ag --vimgrep'

"NERDTree
map <C-b> :NERDTreeToggle<CR>
map <C-i> :NERDTreeFind<CR>
let g:NERDTreeWinSize = 20 
let g:NERDTreePatternMatchHighlightFullName = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let g:NERDTreeShowBookmarks=1
let g:NERDTreeDirArrowExpandable = '⮞'
let g:NERDTreeDirArrowCollapsible = '⮟'
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
" Auto close
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
syntax enable
if exists("g:loaded_webdevicons")
	call webdevicons#refresh()
endif

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✏',
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
  \ 'colorscheme': 'nord',
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


" Snippet
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<tab>"

" Coc
let g:coc_global_extensions = [ 
			\'coc-rls',
			\'coc-emmet', 
			\'coc-css', 
			\'coc-html', 
			\'coc-json', 
			\'coc-prettier', 
			\'coc-tsserver',
			\'coc-vetur',
			\'coc-python',
			\]

" Move
let g:move_key_modifier = 'C'

" syntax javascipt
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_conceal_function             = "ƒ"
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
let g:rainbow#pairs = [['(', ')'], ['{', '}'], ['[', ']']]
autocmd FileType javascript syntax clear jsFuncBlock
augroup rainbow_lisp
  autocmd!
	autocmd FileType lisp,clojure,scheme,javascript,html,typescript,python RainbowParentheses
augroup END
let g:rainbow#blacklist = [248, 238]

" Git Blammer
let g:blamer_enabled = 1
let g:blamer_delay = 500 
let g:blamer_show_in_visual_modes = 1 
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


let g:indentLine_concealcursor = ''

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
