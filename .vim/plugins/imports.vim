" If vim-plug is not present, go get it.
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let use_nerdtree = 0

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'
" Make sure you use single quotes

" Terraform
Plug 'hashivim/vim-terraform'

" GraphQL
Plug 'jparise/vim-graphql'

if use_nerdtree
  " NerdTree file tree and extensions
  Plug 'preservim/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
endif

" Enable support for .editorconfig files
Plug 'editorconfig/editorconfig-vim'

" Depends on pbcopy and pbpaste
Plug 'christoomey/vim-system-copy'

" Tmux integration
Plug 'christoomey/vim-tmux-navigator'

" JavaScript
Plug 'pangloss/vim-javascript'

" TypeScript
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim', {'for': ['typescript']}

" Ruby
Plug 'tpope/vim-endwise'

" Kotlin
Plug 'udalov/kotlin-vim'

" Salesforce
Plug 'neowit/vim-force.com'

" Linting
Plug 'dense-analysis/ale'

" QOL
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

" Color scheme packages
" Plug 'kaicataldo/material.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'dguo/blood-moon', { 'rtp': 'applications/vim' }

" fzf dependencies
Plug 'junegunn/fzf' " fzf managed through Brewfile
Plug 'junegunn/fzf.vim'

" netrw settings
Plug 'tpope/vim-vinegar'

" All hail the AI overlords
Plug 'github/copilot.vim'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

" Load individual plugin configurations:
source ~/.vim/plugins/config/appearance.vim
source ~/.vim/plugins/config/salesforce.vim
if has_key(plugs, 'nerdtree')
  source .vim/plugins/config/nerdtree.vim
endif

" editorconfig options
au FileType gitcommit let b:EditorConfig_disable = 1

" jparise/vim-graphql configuration
au BufNewFile,BufRead *.graphql,*.gql,*.graphqls setfiletype graphql
