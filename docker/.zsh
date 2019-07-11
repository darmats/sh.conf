if [ ! -d ~/.zsh/completion ]; then
  mkdir -p ~/.zsh/completion
fi
if [ ! -f ~/.zsh/completion/_docker-compose ]; then
  curl -L https://raw.githubusercontent.com/docker/compose/1.23.1/contrib/completion/zsh/_docker-compose > ~/.zsh/completion/_docker-compose
fi
fpath=(~/.zsh/completion $fpath)
