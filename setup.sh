#!/bin/bash

##############################################################################
# dotfiles setup

old_dotfiles= "./old_dotfiles/"
mkdir $old_dotfiles

##############################################################################
# zsh

if [ ! -f "/bin/zsh" ]; then
    echo "zsh is not installed"
    exit 0
fi

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# spaceship prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"


mv ~/.zshrc $old_dotfiles
ln -s "~/.zshrc" "./zshrc"

##############################################################################
# vim

mv ~/.vimrc $old_dotfiles
ln -s "~/.vimrc" "./vimrc"

source ~/.zshrc

echo "run :CocInstall in vim"

##############################################################################
# git

mv ~/.gitconfig $old_dotfiles
ln -s "~/.gitconfig" "./gitconfig"
