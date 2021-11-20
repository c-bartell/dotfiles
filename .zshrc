###########
## ZSHRC ##
###########

source ~/.zsh_prompt
source ~/.zsh_functions
source ~/.zsh_aliases
source ~/.zsh_env_vars
source ~/.zsh_sensitive

eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# added by travis gem
[ ! -s /Users/curtis/.travis/travis.sh ] || source /Users/curtis/.travis/travis.sh

# Python
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
fpath+=${ZDOTDIR:-~}/.zsh_functionspip
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Java Runtime from Homebrew
export PATH="/usr/local/opt/openjdk/bin:$PATH"



# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37

RED='\033[0;31m'
ORANGE='\033[0;33m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
INDIGO='\033[1;35m'
VIOLET='\033[0;35m'
NC='\033[0m'

echo -e "


${RED}COOL ART GOES HERE!


"
