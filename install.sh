#!/bin/bash

git config --global init.defaultBranch main
git config --global push.default simple
git config --global push.autoSetupRemote true

export FEATURE_DAEMONIZE_SCRIPT_SERVER=true
export DX_TELEMETRY_OPT_OUT=true
export SERVICEOWNERS_SKIP=1
export RUBOCOP_SKIP=1
export HISTFILE=/workspaces/.codespaces/.persistedshare
