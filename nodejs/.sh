if [ -d ${HOME}/.nodebrew/current/bin ] ; then
  export PATH=${HOME}/.nodebrew/current/bin:${PATH}
fi

if [ -n $(command -v npx) ]; then
  alias envinfo='npx envinfo'
fi
