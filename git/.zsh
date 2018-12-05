autoload -U colors
colors
setopt PROMPT_SUBST
# dummy
git_super_status() {
}

if [ -z ${CONF_ZSH_PROMPT} ]; then
  PROMPT=$'%{$fg_bold[green]%}%n@%m%{${reset_color}%}:%{$fg_bold[blue]%}%~%{${reset_color}%} $(git_super_status)$ '
else
  PROMPT=${CONF_ZSH_PROMPT}
fi

if [ -z $(command -v gitstatus) ]; then
  return
fi

source ${CNF_ROOT}/git/git-prompt.zsh

# for c in {000..255}; do echo -n "\e[38;5;${c}m $c" ; [ $(($c%16)) -eq 15 ] && echo;done;echo
# GIT_BASE_COLOR="%{\e[38;5;110m%}"
GIT_BASE_COLOR="%{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_PREFIX="${GIT_BASE_COLOR}["
ZSH_THEME_GIT_PROMPT_SUFFIX="${GIT_BASE_COLOR}]%{${reset_color}%}"
ZSH_THEME_GIT_PROMPT_SEPARATOR="${GIT_BASE_COLOR}|"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[green]%}%{%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[magenta]%}%{x%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[red]%}%{+%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg[green]%}%{↘%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[green]%}%{↗%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{…%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}%{✔%G%}"
