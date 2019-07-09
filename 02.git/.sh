if [ -z $(command -v git) ]; then
  return
fi

function _gsta() {
  git stash apply stash@{$1};
}

function _gstd() {
  git stash drop stash@{$1};
}

function _gcot() {
  git fetch && git checkout origin/$1;
}

function _gcop() {
  git checkout $1 && git pull
}

alias g='git'
alias ga='git add'
alias ga.='git add .'
alias gs='git status'
alias gst='git stash'
alias gsts='git stash save'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsta='_gsta'
alias gstd='_gstd'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcp='git cherry-pick'
alias gcot='_gcot'
alias gcop='_gcop'
alias gb='git branch'
alias gba='git branch -a'
alias gf='git fetch'
alias gfp='git fetch --prune'
alias gd='git diff'
alias gdc='git diff --cached'
alias gpull='git pull'
alias gpl='gpull'
alias gplr='git pull --rebase'
alias gpush='git push'
alias gpsh='gpush'
alias gpso='git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'
alias grb='git rebase'
alias grbi='git rebase -i'
alias grbc='git rebase --continue'
alias greset='git reset'
alias grst='greset'
alias gca='git commit --amend'
alias gcan='git commit --amend --no-edit'
alias gcm='git commit -m'
alias gcv='git commit -v --cleanup=scissors'
alias gicm='git commit --allow-empty -m "Initial commit."'
alias gmas='git checkout master && git pull'
alias gdev='git checkout develop && git pull'
alias gl='git log'
alias glo='gl --oneline'
alias glg="gl --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %Cblue<%an>%Creset' --abbrev-commit --date=relative"
alias glga="glg --all"
alias glge="gl --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %Cblue<%an (%ae)>%Creset' --abbrev-commit --date=relative"
alias glgea="glge --all"
alias glgm="glg --merges"
alias glgma="glgm --all"
alias glc='git shortlog -sn --no-merges'
alias gdelmrgd='git fetch && git branch --merged | egrep -v "\\*|master|develop" | xargs -I % git branch -d %'
alias gunsetremote='git config --unset branch.$(git rev-parse --abbrev-ref HEAD).merge'
