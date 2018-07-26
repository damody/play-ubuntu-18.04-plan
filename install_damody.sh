#!/bin/bash
apt install curl -y
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env
cargo install ripgrep
cargo install exa
cargo install fd-find
cp -ar prototype/.bashrc ~/.bashrc
cp -ar prototype/shell-basic/terminal-color-theme ~/.terminal-color-theme
prototype/shell-basic/oh-my-zsh/install.sh
echo "alias ls='exa'" >> ~/.zshrc
source ~/.bashrc