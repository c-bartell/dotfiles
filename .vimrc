set nocompatible              " be iMproved, required filetype on                  " required

" Load plugins
source ~/.vim/plugins/imports.vim

" enable syntax and plugins (for netrw)
" Finding Files:
" Search down into sub folders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

set splitright

" Do I need this if I have a global .editorconfig?
set tabstop=4
set autoindent
" Is this actually doing anything?
syntax sync minlines=10000 " Prevents hilighting from giving up halfway through file >:( 

" Command to toggle absolute/hybrid-relative line numbers
set number         " Start with absolute number
set relativenumber " Start with hybrid-relative
nnoremap <silent> <C-n> :set relativenumber!<CR>

" Remap pane nav to CTRL-Direction
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Backspace through anything in insert mode
set backspace=indent,eol,start

" System Copy configuration
let g:system_copy#copy_command='pbcopy'
let g:system_copy#paste_command='pbpaste'
let g:system_copy_silent = 1

" editorconfig options
au FileType gitcommit let b:EditorConfig_disable = 1

" jparise/vim-graphql configuration
au BufNewFile,BufRead *.graphql,*.gql,*.graphqls setfiletype graphql

" Undo dir configuration (must manually create ~/.vim/undo)
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000
set undofile
