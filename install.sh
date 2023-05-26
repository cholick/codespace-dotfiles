#!/bin/bash

git config --global init.defaultBranch main
git config --global push.default simple
git config --global push.autoSetupRemote true

# This is just a reminder that I have these set as secrets, setting them here doesn't do anything
FEATURE_DAEMONIZE_SCRIPT_SERVER=true
DX_TELEMETRY_OPT_OUT=true
SERVICEOWNERS_SKIP=1
RUBOCOP_SKIP=1
