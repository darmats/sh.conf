function _git_sta() {
    git stash apply stash@{$1};
}

function _git_std() {
    git stash drop stash@{$1};
}

function _git_cot() {
    git fetch && git checkout origin/$1;
}

function _git_cop() {
    git checkout $1 && git pull
}

alias ga='git add'
alias gs='git status'
alias gst='git stash'
alias gsts='git stash save'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsta='_git_sta'
alias gstd='_git_std'
alias gco='git checkout'
alias gcot='_git_cot'
alias gcop='_git_cop'
alias gb='git branch'
alias gba='git branch -a'
alias gf='git fetch'
alias gfp='git fetch --prune'
alias gd='git diff'
alias gdc='git diff --cached'
alias gpl='git pull --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'
alias gplr='git pull --rebase'
alias gpso='git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'
alias grb='git rebase'
alias gcm='git commit -m'
alias gcv='git commit -v'
alias gicm='git commit --allow-empty -m "Initial commit."'
alias gmas='git checkout master && git pull'
alias gdev='git checkout develop && git pull'
alias glog='git log'
alias glogline='git log --oneline'
alias gdelmrgd='git fetch && git branch --merged | egrep -v "\\*|master|develop" | xargs -I % git branch -d %'
alias gunsetremote='git config --unset branch.$(git rev-parse --abbrev-ref HEAD).merge'
alias glogc='git shortlog -sn --no-merges'