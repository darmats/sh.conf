if test -z (command -v ghq)
  exit
end

if test -z $GHQ_ROOT
  set -x GHQ_ROOT $GOPATH/src
end
