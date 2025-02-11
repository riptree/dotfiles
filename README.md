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

### fisher

```shell
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
```

### ghq

```shell
brew install ghq
```

### peco

```shell
brew install peco
```

### fzf

```shell
brew install fzf
```

### eza

```shell
brew install eza
```

## Setup Config

GNU Stow をインストール

```shell
brew install stow
```

シンボリックリンクを作成

```shell
rm -rf ~/.config/fish
stow -R -v -d . -t ~ tmux fish nvim wezterm
```

シンボリックリンクを削除

```shell
stow -R -v -D -d . -t ~ fish tmux nvim wezterm
```
