alias l='ll'
alias tlf='tail -f'

if test -d "/usr/sbin"
  export PATH="/usr/sbin:$PATH"
end
if test -d "/usr/local/bin"
  export PATH="/usr/local/bin:$PATH"
end
if test -d "/usr/local/sbin"
  export PATH="/usr/local/sbin:$PATH"
end
