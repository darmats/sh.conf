# docker
alias dk='docker'
alias di='docker images'
alias dv='docker volume'
alias dvc='docker volume create'
alias dvi='docker volume inspect'
alias dvls='docker volume ls'
alias dvl='dvls'
alias dvp='docker volume prune'
alias dvrm='docker volume rm'
alias dvr='dvrm'
alias dn='docker network'
alias dnc='docker network create'
alias dni='docker network inspect'
alias dnls='docker network ls'
alias dnl='dnls'
alias dnp='docker network prune'
alias dnrm='docker network rm'
alias dnr='dnrm'

# docker-compose
alias dc='docker-compose'
alias dcb='docker-compose build'
alias dcbn='docker-compose build --no-cache'
alias dcc='docker-compose config'
alias dcd='docker-compose down'
alias dce='docker-compose exec'
alias dcr='docker-compose run --rm'
alias dcu='docker-compose up -d'
alias dcps='docker-compose ps'

# docker-machine
alias dm='docker-machine'
alias dmi='docker-machine inspect'
alias dml='docker-machine ls'

function dmc() {
  if [ $# -eq 0 ]; then
    eval $(docker-machine env)
  else
    eval $(docker-machine env ${1})
  fi
}
