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
" set number relativenumber
" augroup numbertoggle
" 		autocmd!
" 		autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
" 		autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
" augroup END

