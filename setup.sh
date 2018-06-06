#!/bin/bash
set -ex
files=( .gitconfig .vimrc .tmux.conf .bashrc .bash_profile )

# Create symlinks
pushd ~
  for file in ${files[@]}; do
    # Create backup files unless backups already exists.
    if [[ -e "$file" && ! -e "${file}.bak" ]]; then
      cp -f "$file" "${file}.bak"
    fi
  
    ln -s --force "dotfiles/$file" .
  done
popd
