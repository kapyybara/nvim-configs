if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

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
			\'coc-rust-analyzer',
			\]
"			\'coc-graphql',


" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

set updatetime=300

" This makes it so that you can click a variable and a float window pops up
nnoremap <silent> <leader>h :call CocActionAsync('doHover')<cr>

" Auto hover
"function! ShowDocIfNoDiagnostic(timer_id)
"  if (coc#float#has_float() == 0 && CocHasProvider('hover') == 1)
"    silent call CocActionAsync('doHover')
"  endif
"endfunction
"
"function! s:show_hover_doc()
"  call timer_start(2500, 'ShowDocIfNoDiagnostic')
"endfunction

"autocmd CursorHoldI * :call <SID>show_hover_doc()
"autocmd CursorHold * :call <SID>show_hover_doc()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
" remap for complete to use tab and <cr>
inoremap <silent><expr> <TAB>
	\ coc#pum#visible() ? coc#pum#next(1):
	\ <SID>check_back_space() ? "\<Tab>" :
	\ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()

"To configure rootPatterns for specified filetype
autocmd FileType python let b:coc_root_patterns = ['.git', '.env']

