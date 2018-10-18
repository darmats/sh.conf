local ZSH_ROOT=$(cd $(dirname $0); pwd)

source ${ZSH_ROOT}/init.shrc

zstyle -T ':completion:*:*:git:*' tag-order && \
	zstyle ':completion:*:*:git:*' tag-order 'alias-commands' 'common-commands'

if [ -d /usr/local/share/zsh-completions ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
# zstyle :compinstall filename '$($HOME)/.zshrc'
zstyle :compinstall filename '$(${ZSH_ROOT})/init.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# shell
setopt hist_ignore_dups

for file in `\find ${ZSH_ROOT} -type f -name .zshrc`; do
    source $file
    # echo $file
done
