# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zshrc.pre.zsh"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.composer/vendor/bin:$PATH
export EDITOR="/usr/bin/vim"
export VISUAL="/usr/bin/vim"
export BROWSER="lynx"
export ZSH="/Users/clark/.oh-my-zsh"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH=/usr/local/share/python:$PATH
export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH
export GEM_HOME="$HOME/.gem"
export PATH="/Users/clark/.deno/bin:$PATH"

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# (cat ~/.cache/wal/sequences &)

# To add support for TTYs this line can be optionally added.
# source ~/.cache/wal/colors-tty.sh

SPACESHIP_PROMPT_ORDER=(
  git_user
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
#  hg            # Mercurial section (hg_branch  + hg_status)
#  package       # Package version
  node          # Node.js section
#  ruby          # Ruby section
#  xcode         # Xcode section
#  swift         # Swift section
  rust          # Rust section
#  docker        # Docker section
#  aws           # Amazon Web Services section
#  venv          # virtualenv section
#  conda         # conda virtualenv section
#  pyenv         # Pyenv section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char
)

ZSH_THEME="spaceship"

plugins=(git npm zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source ~/.zsh_aliases
source ~/.zsh_functions

archey

# Add Visual Studio Code (code)
# export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="/usr/local/sbin:$PATH"


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Deno
fpath=(~/.zsh $fpath)
# EdgeDB
fpath+=~/.zfunc
autoload -Uz compinit
compinit -u

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zshrc.post.zsh"
export TERM=xterm-256color
