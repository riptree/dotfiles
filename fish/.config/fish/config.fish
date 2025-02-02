if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# homebrew
set PATH /opt/homebrew/bin $PATH

# GOPATH
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin
set -x GOROOT (go1.23.5 env GOROOT)
set -x PATH $PATH $GOROOT/bin


# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.fish.inc" ]; . "$HOME/google-cloud-sdk/path.fish.inc"; end

# Cargo
set -gx CARGO_HOME $HOME/.cargo
fish_add_path $CARGO_HOME/bin

# volta
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# GitHub CLI
eval (gh completion -s fish | source)

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

function r
    set repo_name (ghq list | fzf)

    if test -n "$repo_name"
        cd (ghq root)/$repo_name
    end
end

function b
  set branch (git branch --sort=-committerdate | fzf --reverse)
  if test -n "$branch"
    git checkout (echo $branch | sed 's/^[ *]*//')
  end
end

# aliases
alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"
alias dcd="docker compose down"
alias dcu="docker compose up"
alias dcr="docker compose restart"
alias a="cd .."
alias aa="cd ../.."
alias aaa="cd ../../.."
alias aaaa="cd ../../../.."
alias aaaaa="cd ../../../../.."
alias g="git"
alias gb="git branch"
alias gs="git status"
alias gsw="git switch"
alias k="kubectl"
alias p="pnpm"

if type -q eza
  alias ll="eza -l -g --icons"
  alias lla="ll -a"
end
