if status is-interactive
    # Commands to run in interactive sessions can go here
end

if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# Environment variable

# set -U fish_user_paths $HOME/.nodebrew/current/bin $fish_user_paths

# aliases
alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"
alias dcd="docker compose down"
alias dcu="docker compose up"
alias a="cd .."
alias aa="cd ../.."
alias aaa="cd ../../.."
alias aaaa="cd ../../../.."
alias aaaaa="cd ../../../../.."
alias g="git"

# rbenv
set -x PATH $HOME/.rbenv/bin $PATH
status --is-interactive; and source (rbenv init -|psub)

# GOPATH
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

