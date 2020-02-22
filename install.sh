#!/bin/bash

set +ex

# ./node.sh

export DROP=$HOME/Dropbox

rm -f $HOME/.config/nvim
rm -f $HOME/.ssh
rm -f $HOME/fzf
rm -f $HOME/scripts

ln -sf $DROP/myvim $HOME/.config/nvim
ln -sf $DROP/myvim/esformatter.json $HOME/.esformatter
ln -sf $DROP/myvim/eslintrc.json $HOME/.eslintrc.json
ln -sf $DROP/myvim/eslintrc.json $HOME/.json
ln -sf $DROP/myvim/init.vim $HOME/.vimrc
ln -sf $DROP/myvim/jsbeautifyrc.json $HOME/.jsbeautifyrc
ln -sf $DROP/scripts $HOME/scripts
ln -sf $DROP/scripts/bash_profile $HOME/.bash_profile
ln -sf $DROP/scripts/fzf $HOME/fzf
ln -sf $DROP/scripts/gemrc $HOME/.gemrc
ln -sf $DROP/scripts/gitconfig $HOME/.gitconfig
ln -sf $DROP/scripts/gitignore_global $HOME/.gitignore_global
ln -sf $DROP/ssh $HOME/.ssh
