#!/usr/bin/env bash

# vimrc
cp ".vimrc" $HOME

# tmux
cp ".tmux.conf" $HOME

# fish
rm -rf "$HOME/.config/fish"
cp -r "./fish" "$HOME/.config/"
