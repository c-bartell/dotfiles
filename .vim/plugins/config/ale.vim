" Heavily stolen from https://blog.ffff.lt/posts/typescript-and-ale/
" let node_fixers = ['prettier', 'eslint']
" let node_fixers = ['eslint']

" let g:ale_fixers = {
" \  'javascript':node_fixers,
" \  'typescript': node_fixers,
" \  'ruby': ['rubocop'],
" \}

" let g:ale_fix_on_save = 1

" Custom keybindings:
" augroup ale_auto_commands
"   autocmd!

"   " Jump to type definition:
"   autocmd FileType * map <buffer> <c-]> :ALEGoToDefinition -vsplit<CR>
"   autocmd FileType typescript map <buffer> <c-[> :ALEGoToTypeDefinition -vsplit<CR>
" augroup END

" For autocompletion with deoplete:
" nmap <silent> <leader>aj :ALENext<cr>
" nmap <silent> <leader>ak :ALEPrevious<cr>

" nnoremap K :ALEHover<CR>
" nnoremap <silent> gr :ALEFindReferences<CR>
" nnoremap <silent> gs :ALESymbolSearch<CR>
" nnoremap <leader>rn :ALERename<CR>

" nnoremap <leader>qf :ALECodeAction<CR>
" vnoremap <leader>qf :ALECodeAction<CR>

" let g:ale_sign_error = '🐛'
" let g:ale_sign_warning = '⚠️'
" let g:ale_sign_info = 'ℹ'

" let g:ale_virtualtext_cursor = 1
" let g:ale_virtualtext_prefix = '🔥 '

let g:ale_fixers = {
\  'ruby': ['rubocop'],
\}
