#!/usr/bin/env zsh

ln -sf $HOME/workspace/dotfiles/dotconfig/nvim $HOME/.config/
ln -sf $HOME/workspace/dotfiles/dotconfig/i3 $HOME/.config/
ln -sf $HOME/workspace/dotfiles/dotconfig/rofi $HOME/.config/
ln -sf $HOME/.config/nvim/site $HOME/.local/share/nvim/
ln -sf $HOME/workspace/dotfiles/dotgitconfig $HOME/.gitconfig
ln -sf $HOME/workspace/dotfiles/dottmux.conf $HOME/.tmux.conf
ln -sf $HOME/workspace/dotfiles/dotXresources $HOME/.Xresources
ln -sf $HOME/workspace/dotfiles/dotxsession $HOME/.xsession
ln -sf $HOME/workspace/dotfiles/dotzshrc $HOME/.zshrc
ln -sf $HOME/workspace/dotfiles/scripts/* $HOME/bin/
ln -sf $HOME/workspace/dotfiles/Preferences.sublime-settings $HOME/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
ln -sf $HOME/workspace/dotfiles/Package\ Control.sublime-settings $HOME/.config/sublime-text-3/Packages/User/Package\ Control.sublime-settings

