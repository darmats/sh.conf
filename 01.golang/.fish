if not test (command -v go)
  exit
end

if test -z $GOPATH
  set -x GOPATH $HOME/repos
end
set_path $GOPATH/bin
