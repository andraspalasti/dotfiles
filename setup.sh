#!/usr/bin/env bash

# vimrc
cp ".vimrc" $HOME

# fish
rm -rf "$HOME/.config/fish"
cp -r "./fish" "$HOME/.config/"
