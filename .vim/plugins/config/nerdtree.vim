" NERDTree configuration
" autocmd VimEnter * NERDTree | wincmd p
let NERDTreeShowHidden=1

let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNerdTreeFile = 1
" Fancy NERDTree shortcuts
nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" The following collides with scrolling down a page :facepalm:
" nnoremap <C-f> :NERDTreeFind<CR>

" NERDTree Git configuration
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NerdTreeGitStatusUntrackedFilesMode = 1
