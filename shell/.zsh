source ${CNF_ROOT}/shell/prompt.zsh

alias -g ...='../../'
alias -g ....='../../../'
alias -g @g=' | grep'
alias -g @gi=' | grep -i'
if [ -n $(command -v peco) ]; then
  alias -g @p=' | peco'
fi
alias -g @x=' | xargs'