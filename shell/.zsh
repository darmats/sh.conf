_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
source ${_DIR}/prompt.zsh
unset _DIR

alias -g ...='../../'
alias -g ....='../../../'
alias -g @g=' | grep'
alias -g @gi=' | grep -i'
if [ -n $(command -v peco) ]; then
  alias -g @p=' | peco'
fi
alias -g @x=' | xargs'
