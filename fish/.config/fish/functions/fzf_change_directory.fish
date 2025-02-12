function _fzf_change_directory
  if [ (count $argv) ]
    fzf --reverse --query "$argv" |read foo
  else
    fzf --reverse |read foo
  end
  if [ $foo ]
    builtin cd $foo
    commandline -r ''
    commandline -f repaint
  else
    commandline ''
  end
end

function fzf_change_directory
  begin
    ghq list -p
    ls -ad $HOME/dev/*/* |grep -v '\.git'
    echo $HOME/.config
    find $HOME/.config -maxdepth 1 -type d ! -name ".*" ! -name ".config" 2>/dev/null
    # find . -maxdepth 1 -type d ! -name ".*" ! -name "." 2>/dev/null | sed "s#^\.#$PWD#"
  end | sed -e 's/\/$//' | awk '!a[$0]++' | _fzf_change_directory $argv
end
