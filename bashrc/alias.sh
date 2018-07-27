if [ `uname` = "Linux" ]; then
  alias ls='ls -hF --color=auto'
  alias la="ls -AF"
  alias ll="ls -lFA"
  alias lm="ls -lFA | more"
  alias lu="ls -lFu"
  alias lU="ls -lFU"
elif [ `uname` = "Darwin" ]; then # For Mac OSX
  export CLICOLOR=1
  export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
  alias la="ls -AF"
  alias ll="ls -lOFA"
  alias lm="ls -lOFA | more"
  alias lu="ls -lFuT"
  alias lU="ls -lFUT"
  alias vim="/usr/local/bin/vim"
fi

alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

alias h="history"
alias vir="vim -R"
alias server='python -m SimpleHTTPServer'
alias ptt='ssh bbsu@ptt.cc'
alias mountblt='sshfs -p 22 chingyuc@dev:/nail/home/chingyuc/blt ~/dev -oauto_cache,reconnect,defer_permissions,negative_vncache,volname=Dev'
