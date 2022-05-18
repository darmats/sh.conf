ASDF_HOME="${CNF_ASDF_HOME:-${HOMEBREW_PREFIX}/opt/asdf}"

if [ ! -f ${ASDF_HOME}/libexec/asdf.sh ]; then
  return
fi
if [ ! -f "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc" ]; then
  return
fi

. ${ASDF_HOME}/libexec/asdf.sh
source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc"
