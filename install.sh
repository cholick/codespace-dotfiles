#!/bin/bash

git config --global init.defaultBranch main
git config --global push.default simple
git config --global push.autoSetupRemote true
git config --global commit.gpgsign false

# Leave what's in place there but append customizations
echo "source '/workspaces/.codespaces/.persistedshare/dotfiles/.bashrc'" >> ~/.bashrc
