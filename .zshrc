# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'

# Determine if current working directory is a git repository
git_branch_color() {
  if current_git_status=$(git status 2> /dev/null); then
    parse_git_dirty
  else
    echo ""
  fi
}

# Change branch color if working tree is clean
parse_git_dirty() {
  if current_git_status=$(git status | grep 'Changes to be committed:\|Untracked files:\|modified:|deleted:' 2> /dev/null); then
    echo "%F{red}"
  else
#    echo "%F{#3279e3}"
    echo "%F{green}"
  fi
}

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%F{cyan}%d $(git_branch_color)${vcs_info_msg_0_} %f¯\_(ツ)_/¯ '
#PROMPT='%F{#136377}%d $(git_branch_color)${vcs_info_msg_0_} %f¯\_(ツ)_/¯ '

eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# Aliases
alias be='bundle exec'
alias ber='bundle exec rspec'
alias rubo='bundle exec rubocop'
alias rc='rails routes -c'
alias venv='. venv/bin/activate'
alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# added by travis gem
[ ! -s /Users/curtis/.travis/travis.sh ] || source /Users/curtis/.travis/travis.sh

# Python
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
fpath+=${ZDOTDIR:-~}/.zsh_functionspip
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi