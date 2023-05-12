#!/bin/bash

git config --global init.defaultBranch main
git config --global push.default simple
git config --global push.autoSetupRemote true

# todo: this is just a reminder, exports here don't actually work
export FEATURE_DAEMONIZE_SCRIPT_SERVER=true
export SERVICEOWNERS_SKIP=1
export RUBOCOP_SKIP=1
