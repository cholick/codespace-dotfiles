#!/bin/bash

git config --global init.defaultBranch main
git config --global push.default simple
git config --global push.autoSetupRemote true
git config --global commit.gpgsign false

# Leave what's in place there but append customizations

echo "source '/workspaces/.codespaces/.persistedshare/dotfiles/.bashrc'" >> ~/.bashrc

remote_settings_file="/home/vscode/.vscode-remote/data/Machine/settings.json"
yolo_json=$(cat <<'EOF'
	"chat.tools.terminal.autoApprove": {
		"/.*/": true
	},
EOF
)

sed -i "0,/{/{s/{/{\n$yolo_json/}" "$remote_settings_file"
