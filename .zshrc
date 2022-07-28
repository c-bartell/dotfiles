###########
## ZSHRC ##
###########

source ~/.zsh/prompt
source ~/.zsh/functions
source ~/.zsh/aliases
source ~/.zsh/env_vars
source ~/.zsh/sensitive

# Load NVM
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

eval "$(rbenv init -)"

# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37

# 256 color fg format:
# \[38;5;ColorNumberm
# 256 color bg format:
# \[48;5;ColorNumber
RED='\033[0;31m'
ORANGE='\033[0;33m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
INDIGO='\033[1;35m'
VIOLET='\033[0;35m'
NC='\033[0m'
IBOTTA='\033[48;2;232;70;120;38;2;255;255;255m'
CLEAR='\033[0m'


echo -e "${IBOTTA}                                                  ${CLEAR}";
echo -e "${IBOTTA}                                                  ${CLEAR}";
echo -e "${IBOTTA}                                                  ${CLEAR}";
echo -e "${IBOTTA}   d8b 888               888    888               ${CLEAR}";
echo -e "${IBOTTA}   Y8P 888               888    888               ${CLEAR}";
echo -e "${IBOTTA}       888               888    888               ${CLEAR}";
echo -e "${IBOTTA}   888 88888b.   .d88b.  888888 888888  8888b.    ${CLEAR}";
echo -e "${IBOTTA}   888 888 \"88b d88\"\"88b 888    888        \"88b   ${CLEAR}";
echo -e "${IBOTTA}   888 888  888 888  888 888    888    .d888888   ${CLEAR}";
echo -e "${IBOTTA}   888 888 d88P Y88..88P Y88b.  Y88b.  888  888   ${CLEAR}";
echo -e "${IBOTTA}   888 88888P\"   \"Y88P\"   \"Y888  \"Y888 \"Y888888   ${CLEAR}";
echo -e "${IBOTTA}                                                  ${CLEAR}";
printRandomValue
echo -e "${IBOTTA}                                                  ${CLEAR}\n";

useNvmrc

# added by travis gem
[ ! -s /Users/curtis.bartell/.travis/travis.sh ] || source /Users/curtis.bartell/.travis/travis.sh
