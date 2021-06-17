_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
source ${_DIR}/prompt.zsh
unset _DIR

setopt HIST_IGNORE_SPACE

alias -g ...='../../'
alias -g ....='../../../'
alias -g @g=' | grep'
alias -g @gi=' | grep -i'
if [ -n $(command -v peco) ]; then
  alias -g @p=' | peco'
fi
alias -g @x=' | xargs'
alias -g @jq=' | jq'
alias -g @upper=' | tr "[:lower:]" "[:upper:]"'
alias -g @lower=' | tr "[:upper:]" "[:lower:]"'
