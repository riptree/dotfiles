# dotfiles

## Installation

### tmux

```shell
brew install tmux
```

### fish

```shell
brew install fish
```

/etc/shells の末尾に`/usr/local/bin/fish`を追加

```shell
sudo vi /etc/shells
```

デフォルトシェルを fish に変更

```shell
chsh -s /usr/local/bin/fish
```

## Setup Config

install GNU Stow

```shell
brew install stow
```

create symbolic link

```shell
stow -R -v -d . -t ~ tmux
```
