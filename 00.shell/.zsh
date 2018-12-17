# refs https://github.com/robbyrussell/oh-my-zsh/issues/5068
shpwd() {
  if [ ${(D)PWD} = '~' ]; then
    echo '~'
  elif [ ${PWD:h} = '/' ]; then
    echo ${(D)PWD}
  else
    echo ${${:-/${(j:/:)${(M)${(s:/:)${(D)PWD:h}}#(|.)[^.]}}/${PWD:t}}//\/~/\~}
  fi
}

alias -g ...='../../'
alias -g ....='../../../'
alias -g @g=' | grep'
alias -g @gi=' | grep -i'
if [ -n $(command -v peco) ]; then
  alias -g @p=' | peco'
fi
alias -g @x=' | xargs'
