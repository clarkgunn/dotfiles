export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.composer/vendor/bin:$PATH
export EDITOR="/usr/local/bin/emacs"
export VISUAL="/usr/local/bin/emacs"
export ZSH="/Users/clark/.oh-my-zsh"

SPACESHIP_PROMPT_ORDER=(
  git_user
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  xcode         # Xcode section
  swift         # Swift section
  php           # PHP section
  rust          # Rust section
  docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
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
