vim.cmd[[
  set runtimepath^=~/.vim runtimepath+=~/.vim/after
  let &packpath = &runtimepath

  " source ~/.vimrc
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

  " Enable search highlighting
  set hlsearch

  " Fix syntax highlighting becoming out of sync in large files:
  autocmd BufEnter *.{js,jsx,ts,tsx,json} :syntax sync fromstart
  autocmd BufLeave *.{js,jsx,ts,tsx,json} :syntax sync clear

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

  " Undo dir configuration
  set undodir=$HOME/.vim/undo
  set undolevels=1000
  set undoreload=10000
  set undofile

  " trigger `autoread` when files changes on disk
  set autoread
  autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
  " notification after file change
  autocmd FileChangedShellPost *
        \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

  " Blinking cursor
  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
        \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
        \,sm:block-blinkwait175-blinkoff150-blinkon175
]]
