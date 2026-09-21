#!/bin/bash

script_dir="$(cd "$(dirname "$0")" && pwd)"

# Make this conditional on being in a codespace, local devcontainers use dev.containers.copyGitConfig,
# which copies the local config. It does this after dotfiles and skips if there's already a config
if [ -n "${CODESPACES:-}" ]; then
    git config --global init.defaultBranch main
    git config --global push.default simple
    git config --global push.autoSetupRemote true
    git config --global commit.gpgsign false
fi

# Leave what's in place there but append customizations
echo "source '$script_dir/.bashrc'" >> ~/.bashrc

# You'd think I could just provide text, but they deprecated that. This is a moving target
# and keeps breaking, reminder to periodically check sentinel instruction
mkdir -p "$HOME/.copilot/instructions"
cp "$script_dir"/*.instructions.md "$HOME/.copilot/instructions/"

# Add remote settings for things that can't be set locally
remote_settings_file="$HOME/.vscode-remote/data/Machine/settings.json"
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
