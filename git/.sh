if [ -z $(command -v git) ]; then
  return
fi

function _git_current_branch() {
  local branch=$(git rev-parse --abbrev-ref HEAD)
  if [ ${branch} = "HEAD" ]; then
    return
  fi
  echo ${branch}
}

alias g='git'
alias ga='git add'
alias ga.='git add .'
alias gs='git status'
alias gst='git stash'
alias gsts='git stash save'
alias gstl='git stash list'
alias gstp='git stash pop'
function gsta() {
  git stash apply stash@{$1};
}
function gstd() {
  git stash drop stash@{$1};
}
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcp='git cherry-pick'
function gcot() {
  git fetch && git checkout origin/$1;
}
function gcop() {
  git checkout $1 && git pull
}
alias gb='git branch'
alias gbv='git branch -vv'
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
alias gpso='git push -u origin HEAD'
alias grb='git rebase'
function grbi() {
  if [ $# -eq 0 ]; then
    git rebase -i
  else
    git rebase -i HEAD~$1
  fi
}
alias grbc='git rebase --continue'
alias greset='git reset'
alias gca='git commit --amend --cleanup=scissors'
alias gcan='git commit --amend --no-edit'
function gcm() {
  if [ $# -eq 0 ]; then
    git commit --cleanup=scissors
  else
    git commit -m $@
  fi
}
alias gcv='git commit -v --cleanup=scissors'
alias gicm='git commit --allow-empty -m "Initial commit."'
alias gmas='git switch master && git pull'
alias gdev='git switch develop && git pull'
alias gl='git log'
alias glo='gl --oneline'
alias glg="gl --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %Cblue<%an>%Creset' --abbrev-commit --date=relative"
alias glga="glg --all"
alias glge="gl --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %Cblue<%an (%ae)>%Creset' --abbrev-commit --date=relative"
alias glgea="glge --all"
alias glgm="glg --merges"
alias glgma="glgm --all"
alias glc='git shortlog -sn --no-merges'
alias gsw='git switch'
function gswf() {
  if [ $# -eq 0 ]; then
    echo "Usage: gswf [feature-name]"
    return 1
  else
    git switch feature/$1
  fi
}
alias gswc='git switch -c'
function gswcf() {
  if [ $# -eq 0 ]; then
    echo "Usage: gswcf [feature-name]"
    return 1
  else
    git switch -c feature/$1
  fi
}
alias grs='git restore'

alias gdelmrgd='git fetch && git branch --merged | egrep -v "\\*|master|develop" | xargs -I % git branch -d %'
alias glsremote='git config -l | grep $(_git_current_branch)'
alias gsetremote='git branch -u origin/$(_git_current_branch)'
alias gunsetremote='git config --unset branch.$(_git_current_branch).merge && git config --unset branch.$(_git_current_branch).remote'
