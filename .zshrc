###########
## ZSHRC ##
###########

source ~/.zsh/prompt
source ~/.zsh/functions
source ~/.zsh/aliases
source ~/.zsh/env_vars
source ~/.zsh/sensitive

# Colorize 'ls' output without needing to pass --color
export CLICOLOR=1

# Load NVM
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Load rbenv
eval "$(rbenv init -)"

# Load autocomplete for Salesforce CLI
eval "$(sf autocomplete script zsh)"

# No system java without this:
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Colorize man pages with bat
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Have less display colours (adding for man, not sure if this will affect other things)
# from: https://wiki.archlinux.org/index.php/Color_output_in_console#man
export LESS_TERMCAP_mb=$'\e[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\e[1;33m'     # begin blink
export LESS_TERMCAP_so=$'\e[01;44;37m' # begin reverse video
export LESS_TERMCAP_us=$'\e[01;37m'    # begin underline
export LESS_TERMCAP_me=$'\e[0m'        # reset bold/blink
export LESS_TERMCAP_se=$'\e[0m'        # reset reverse video
export LESS_TERMCAP_ue=$'\e[0m'        # reset underline
export MANPAGER='less -s -M +Gg'

# Save history accross tmux windows
setopt share_history

source ~/.zsh/swag/ibotta

useNvmrc
