set CNF_SHELL 'fish'

function set_path
  for i in (seq 1 (count $argv))
    if test -d $argv[$i]; and not contains $argv[$i] $PATH
      set PATH $argv[$i] $PATH
    end
  end
end

if test -z $CNF_ROOT
  echo 'Env $CNF_ROOT is not set'
  exit
end

for file in (find $CNF_ROOT -type f -name .fish | sort)
  source $file
  # echo $file
end
