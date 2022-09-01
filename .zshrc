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

# Colorize 'grep' output
export GREP_OPTIONS='--color=always'

# Load NVM
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

eval "$(rbenv init -)"

# added by travis gem
[ ! -s /Users/curtis.bartell/.travis/travis.sh ] || source /Users/curtis.bartell/.travis/travis.sh

source ~/.zsh/swag

useNvmrc

