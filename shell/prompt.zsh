autoload -U colors
colors
setopt PROMPT_SUBST

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

git_status() {
}

_RESET_COLOR="%{${reset_color}%}"

if [ -z ${CONF_ZSH_PROMPT} ]; then
  # PROMPT=$'%m:%F{cyan}%n%f %F{yellow}%c%f $(git_status)%% '
  # PROMPT=$'%{$fg[white]%}%n@%m${_RESET_COLOR} %{$fg[green]%}$(shpwd)${_RESET_COLOR} $(git_status)> '
  PROMPT=$'%{$fg_bold[green]%}%n@%m${_RESET_COLOR}:%{$fg_bold[blue]%}$(shpwd)${_RESET_COLOR} $(git_status)$ '
else
  PROMPT=${CONF_ZSH_PROMPT}
fi
