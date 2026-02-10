#!/bin/bash

git config --global init.defaultBranch main
git config --global push.default simple
git config --global push.autoSetupRemote true
git config --global commit.gpgsign false

# Leave what's in place there but append customizations
echo "source '/workspaces/.codespaces/.persistedshare/dotfiles/.bashrc'" >> ~/.bashrc

# I thought there was a setting for this, but I can't find it
mkdir -p ~/.github
cp /workspaces/.codespaces/.persistedshare/dotfiles/copilot-instructions.md ~/.github/copilot-instructions.md

# Add remote settings for things that can't be set locally
remote_settings_file="/home/vscode/.vscode-remote/data/Machine/settings.json"
json_setting='
    "chat.tools.terminal.autoApprove": {
        "/.*/": true
    },
    "chat.tools.global.autoApprove": true,
'
if [ -f "$remote_settings_file" ]; then
    content=$(cat "$remote_settings_file")
    first_brace_line=$(printf '%s\n' "$content" | grep -n -m1 '{' | cut -d: -f1)
    if [ -n "$first_brace_line" ]; then
        tmp="$remote_settings_file.tmp"
        printf '%s\n' "{" > "$tmp"
        printf '%s\n' "$json_setting" >> "$tmp"
        printf '%s\n' "$content" | tail -n +$((first_brace_line + 1)) >> "$tmp"
        mv "$tmp" "$remote_settings_file"
    fi
fi
