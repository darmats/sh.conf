source $CNF_ROOT/02.git/git-prompt.fish

alias g='git'
alias ga='git add'
alias ga.='git add .'
alias gs='git status'
alias gst='git stash'
alias gsts='git stash save'
alias gstl='git stash list'
alias gstp='git stash pop'
function gsta; git stash apply stash@\{$argv[1]\}; end
function gstd; git stash drop stash@\{$argv[1]\}; end
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcp='git cherry-pick'
function gcot; git fetch; and git checkout origin/$argv[1]; end
function gcop; git checkout $argv[1]; and git pull; end
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
alias gpso='git push --set-upstream origin (git rev-parse --abbrev-ref HEAD)'
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
alias gmas='git checkout master; and git pull'
alias gdev='git checkout develop; and git pull'
alias gl='git log'
alias glo='gl --oneline'
alias glg="gl --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %Cblue<%an>%Creset' --abbrev-commit --date=relative"
alias glga="glg --all"
alias glge="gl --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %Cblue<%an (%ae)>%Creset' --abbrev-commit --date=relative"
alias glgea="glge --all"
alias glgm="glg --merges"
alias glgma="glgm --all"
alias glc='git shortlog -sn --no-merges'
alias gdelmrgd='git fetch; and git branch --merged | egrep -v "\\*|master|develop" | xargs -I % git branch -d %'
alias gunsetremote='git config --unset branch.(git rev-parse --abbrev-ref HEAD).merge'
