# docker
alias dk='docker'
alias dv='docker volume'
alias dvc='docker volume create'
alias dvi='docker volume inspect'
alias dvl='docker volume ls'
alias dvp='docker volume prune'
alias dvr='docker volume rm'
alias dn='docker network'
alias dnc='docker network create'
alias dni='docker network inspect'
alias dnl='docker network ls'
alias dnp='docker network prune'
alias dnr='docker network rm'

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
