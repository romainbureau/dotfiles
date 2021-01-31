#!/usr/bin/env bash

ln -sf $HOME/workspace/dotfiles/config/sway $HOME/.config/
ln -sf $HOME/workspace/dotfiles/config/wofi $HOME/.config/
ln -sf $HOME/workspace/dotfiles/config/waybar $HOME/.config/
ln -sf $HOME/workspace/dotfiles/config/alacritty $HOME/.config/
ln -sf $HOME/workspace/dotfiles/config/redshift $HOME/.config/
ln -sf $HOME/workspace/dotfiles/config/kanshi $HOME/.config/
ln -sf $HOME/workspace/dotfiles/gitconfig $HOME/.gitconfig
ln -sf $HOME/workspace/dotfiles/tmux.conf $HOME/.tmux.conf
ln -sf $HOME/workspace/dotfiles/bash_profile $HOME/.bash_profile
ln -sf $HOME/workspace/dotfiles/bashrc $HOME/.bashrc
ln -sf $HOME/workspace/dotfiles/config/sublime-text-3/Packages/User/Preferences.sublime-settings $HOME/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
ln -sf $HOME/workspace/dotfiles/config/sublime-text-3/Packages/User/Package\ Control.sublime-settings $HOME/.config/sublime-text-3/Packages/User/Package\ Control.sublime-settings
ln -sf $HOME/workspace/dotfiles/config/sublime-text-3/Packages/User/GitBlame.py $HOME/.config/sublime-text-3/Packages/User/GitBlame.py
ln -sf $HOME/workspace/dotfiles/config/nvim $HOME/.config/nvim
for i in $(/bin/ls ./scripts)
do
  ln -sf $HOME/workspace/dotfiles/scripts/$i $HOME/bin/$i
done
