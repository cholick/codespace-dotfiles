#!/bin/bash

git config --global init.defaultBranch main
git config --global push.default simple
git config --global push.autoSetupRemote true

export FEATURE_DAEMONIZE_SCRIPT_SERVER=true
