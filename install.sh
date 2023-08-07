#!/bin/bash

git config --global init.defaultBranch main
git config --global push.default simple
git config --global push.autoSetupRemote true

export FEATURE_DAEMONIZE_SCRIPT_SERVER=true
export DX_TELEMETRY_OPT_OUT=true
export SERVICEOWNERS_SKIP=1
export RUBOCOP_SKIP=1
export HISTFILE=/workspaces/.codespaces/.persistedshare

# Gateway setting sync doesn't work yet
mkdir -p /home/codespace/.config/JetBrains/RemoteDev-GO/_workspaces_hubber-codespace/options
cp jetbrains-config/editor.xml /home/codespace/.config/JetBrains/RemoteDev-GO/_workspaces_hubber-codespace/options
