CNF_SHELL='zsh'
# echo ${CNF_SHELL}

if [ -z $CNF_ROOT ]; then
  CNF_ROOT=$(cd $(dirname $0); pwd)
fi

source ${CNF_ROOT}/root.sh

zstyle -T ':completion:*:*:git:*' tag-order && \
	zstyle ':completion:*:*:git:*' tag-order 'alias-commands' 'common-commands'

# Lines configured by zsh-newuser-install
# HISTFILE=~/.histfile
if [ ! -d ~/.zsh ]; then
  mkdir ~/.zsh
fi
HISTFILE=~/.zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$($HOME)/.zshrc'
# zstyle :compinstall filename '$(${CNF_ROOT})/entrypoint.zsh'

# autoload -Uz compinit
# compinit
# End of lines added by compinstall

# shell
setopt hist_ignore_dups

source $CNF_ROOT/list.sh
for CNF_SH in $CNF_LIST; do
  f=${CNF_ROOT}/${CNF_SH}/.zsh
  if [ -f $f ]; then
    source $f
    # echo $f
  fi
done

autoload -Uz compinit
compinit
