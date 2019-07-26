# todo: fix

# source ~/.git-prompt.sh
# source ~/.git-completion.bash

# GIT_PS1_SHOWDIRTYSTATE=1
# GIT_PS1_SHOWUPSTREAM=1
# GIT_PS1_SHOWUNTRACKEDFILES=1
# GIT_PS1_SHOWSTASHSTATE=

# # show directory only -> show path \W -> \w
# export PS1='\[\033[34m\]\h\[\033[0m\]:\u \[\033[33m\]\W\[\033[0m\] \[\033[31m\]$(__git_ps1 "[%s]")\[\033[0m\]\$ '

case ${CNF_OS} in
  'Darwin' )
    # https://github.com/magicmonty/bash-git-prompt
    # brew install bash-git-prompt
    if [ ! -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
      echo 'Run "brew install bash-git-prompt"'
      return
    fi
    __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
    PS1="${NEW_PROMPT//_LAST_COMMAND_INDICATOR_/${LAST_COMMAND_INDICATOR}${ResetColor}}"
    ;;
  'Linux' )
    # todo: implement
    ;;
esac
