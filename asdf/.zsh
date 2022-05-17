ASDF_HOME="${CNF_ASDF_HOME:/opt/homebrew/opt/asdf}"

if [ ! -f ${ZINIT_HOME}/libexec/asdf.sh ]; then
  return
fi
if [ ! -f "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc" ]; then
  return
fi

. ${ZINIT_HOME}/libexec/asdf.sh
source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc"
