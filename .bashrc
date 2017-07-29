### Prompt

PROMPT_START="_LAST_COMMAND_INDICATOR_ "
PROMPT_END='\[\033[0;33m\]\w\[\033[0;0m\] $ '

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

### Go

export GOROOT=/usr/local/Cellar/go/1.8.3/libexec
export GOPATH=~/src/go
export GOBIN=~/src/go/bin
export PATH=$PATH:$GOBIN

alias idea_exclude='echo .idea/ >> .git/info/exclude'
