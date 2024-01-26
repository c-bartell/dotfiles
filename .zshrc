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

# Load SDKMAN (not managed by brew):
source "$HOME/.sdkman/bin/sdkman-init.sh"

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

# Configure zsh history:
# Allow multiple terminal sessions to all append to one zsh command history
setopt APPEND_HISTORY

# Add comamnds as they are typed, don't wait until shell exit
setopt INC_APPEND_HISTORY

# Do not write events to history that are duplicates of previous events
setopt HIST_IGNORE_DUPS

# When searching history don't display results already cycled through twice
setopt HIST_FIND_NO_DUPS

# Remove extra blanks from each command line being added to history
setopt HIST_REDUCE_BLANKS

# Include more information about when the command was executed, etc
setopt EXTENDED_HISTORY

export HISTFILESIZE=1000000000
export HISTSIZE=10000
export HISTFILE=~/.zsh_history

# Don't save duplicate entries
setopt hist_ignore_all_dups

# Save history accross tmux windows
setopt share_history

source ~/.zsh/swag/ibotta

useNvmrc
