set CNF_SHELL 'fish'

if test -z $CNF_ROOT
  echo 'Env $CNF_ROOT is not set'
  exit
end

for file in (find $CNF_ROOT -type f -name .fish | sort)
  source $file
  # echo $file
end
