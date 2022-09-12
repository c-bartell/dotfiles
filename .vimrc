set nocompatible              " be iMproved, required filetype on                  " required
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

	" Terraform
	Plugin 'hashivim/vim-terraform'

	" GraphQL
    Plugin 'jparise/vim-graphql'
	
	" NerdTree file tree and extensions
	Plugin 'preservim/nerdtree'
	Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plugin 'Xuyuanp/nerdtree-git-plugin'
	Plugin 'ryanoasis/vim-devicons'
	
	" Enable support for .editorconfig files
	Plugin 'editorconfig/editorconfig-vim'

	" Depends on pbcopy and pbpaste
	Plugin 'christoomey/vim-system-copy'

	" Tmux integration
	Plugin 'christoomey/vim-tmux-navigator'

	" JavaScript
	Plugin 'pangloss/vim-javascript'

	" TypeScript
	Plugin 'leafgarland/typescript-vim'
	Plugin 'HerringtonDarkholme/yats.vim', {'for': ['typescript']}

	" Ruby
	Plugin 'tpope/vim-endwise'

	" Linting
	Plugin 'dense-analysis/ale' 

	" QOL
	Plugin 'tpope/vim-commentary'
	Plugin 'tpope/vim-surround'
	Plugin 'jiangmiao/auto-pairs'
	
	" Color scheme packages
	Plugin 'kaicataldo/material.vim'
    Plugin 'rafi/awesome-vim-colorschemes'

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
filetype plugin on " Enable filetype-specific plugins
" NERDTree configuration
" autocmd VimEnter * NERDTree | wincmd p
let NERDTreeShowHidden=1

let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNerdTreeFile = 1
" Fancy NERDTree shortcuts
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

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

" System Copy configuration
let g:system_copy#copy_command='pbcopy'
let g:system_copy#paste_command='pbpaste'
let g:system_copy_silent = 1

" editorconfig options
au FileType gitcommit let b:EditorConfig_disable = 1

" material.vim stuff
let g:material_terminal_italics = 1
" let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' |
" 'darker' | 'darkerish' | 'default-community' | 'palenight-community' | 'ocean-community' |
" 'lighter-community' | 'darker-community'
let g:material_theme_style = 'default'
" colorscheme material

" favs: Archery | abstract | jellybeans | pink-moon | space-camp
" These currently have problems with the cursor diappearing inside of
" delimiters that I need to address later :(
colorscheme jellybeans 

" jparise/vim-graphql configuration
au BufNewFile,BufRead *.graphql,*.gql,*.graphqls setfiletype graphql

" Undo dir configuration (must manually create ~/.vim/undo)
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000
set undofile
