# General
# See https://github.com/github/codespaces/issues/2851
export HISTFILE=/workspaces/.codespaces/.persistedshare/.bash_history
# Write history each command due to Codespace sometimes not flushing
export PROMPT_COMMAND="history -a"
export HISTSIZE=-1
export HISTFILESIZE=-1
export HISTCONTROL=ignoreboth

# Work specific
export FEATURE_DAEMONIZE_SCRIPT_SERVER=true
export DX_TELEMETRY_OPT_OUT=true
export DX_EDGE=true
export SERVICEOWNERS_SKIP=1
export RUBOCOP_SKIP=1
export HCS_CLI_VERBOSE=1
#export GITHUB_TOKEN=$MY_PAT

killport() {
	if [ -z $1 ]; then
		echo 'Port is required. Usage: "killport 8000"';
		return
	fi
	local pid=`lsof  -i :$1 | grep LISTEN | awk '{print $2}'`
	if [ -z $pid ]; then
		echo "No process running on $1"
	else
		echo "Killing process [$pid]"
		kill $pid
	fi
}
