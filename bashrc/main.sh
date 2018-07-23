if command -v brew >/dev/null; then
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
fi

# get self file's parent directory
DIR=$(dirname ${BASH_SOURCE[0]})

# source ${DIR}/prompt.sh
source ${DIR}/alias.sh
source ${DIR}/tmux.sh

export VISUAL=vim
export EDITOR="$VISUAL"
export SVN_EDITOR="/usr/bin/vim"
