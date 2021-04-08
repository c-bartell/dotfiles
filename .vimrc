set nocompatible              " be iMproved, required
filetype on                  " required
" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on
" Finding Files:
" Search down into sub folders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	" alternatively, pass a path where Vundle should install plugins
	"call vundle#begin('~/some/path/here')

	" let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'

	" HardTime, a plugin to enforce good habits
	Plugin 'takac/vim-hardtime'

	" NerdTree file tree and extensions
	Plugin 'preservim/nerdtree'
	
	Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

	Plugin 'Xuyuanp/nerdtree-git-plugin' 

	Plugin 'ryanoasis/vim-devicons'

	Bundle 'vim-ruby/vim-ruby'	

	Plugin 'tpope/vim-endwise'

	Plugin 'jiangmiao/auto-pairs'

	Plugin 'christoomey/vim-tmux-navigator'

	" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Auto toggle between line number modes
" https://jeffkreeftmeijer.com/vim-number/
set number relativenumber
augroup numbertoggle
		autocmd!
		autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
		autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

syntax on
set tabstop=4
set autoindent
filetype indent on " Enable filetype-specific indenting
filetype plugin on " ENable filetype-specific plugins

" HardTime configuration
let g:hardtime_default_on = 0 
let g:hardtime_showmsg = 1
let g:fail_message = "TRY TO SUCK LESS!"

let g:list_of_normal_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = []
let g:list_of_insert_keys = []
let g:list_of_disabled_keys = []

" NERDTree configuration
autocmd VimEnter * NERDTree | wincmd p

let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNerdTreeFile = 1

" NERDTree Git configuration
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NerdTreeGitStatusUntrackedFilesMode = 1

" Vim-Devicons config
set encoding=UTF-8

" Remap pane nav to CTRL-Direction
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Backspace through anything in insert mode
set backspace=indent,eol,start
