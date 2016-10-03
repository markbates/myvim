#!/bin/bash

set +ex

./node.sh

cd ~

ln -s ~/Dropbox/myvim/jsbeautifyrc.json .jsbeautifyrc
ln -s ~/Dropbox/myvim .config/nvim
ln -s ~/Dropbox/myvim/esformatter.json .esformatter
ln -s ~/Dropbox/myvim/eslintrc.json .eslintrc.json
ln -s ~/Dropbox/myvim/tern-config.json .tern-config
ln -s ~/Dropbox/mytmux .tmux
ln -s ~/Dropbox/mytmux/tmux.conf .tmux.conf
