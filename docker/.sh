# docker
alias dk='docker'
alias dki='docker images'
alias dks='docker stats'
alias dkv='docker volume'
alias dkvc='docker volume create'
alias dkvi='docker volume inspect'
alias dkvls='docker volume ls'
alias dkvl='dkvls'
alias dkvp='docker volume prune'
alias dkvrm='docker volume rm'
alias dkvr='dkvrm'
alias dkn='docker network'
alias dknc='docker network create'
alias dkni='docker network inspect'
alias dknls='docker network ls'
alias dknl='dknls'
alias dknp='docker network prune'
alias dknrm='docker network rm'
alias dknr='dknrm'

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
alias dmls='docker-machine ls'
alias dml='dmls'

function dmc() {
  if [ $# -eq 0 ]; then
    eval $(docker-machine env)
  else
    eval $(docker-machine env ${1})
  fi
}
