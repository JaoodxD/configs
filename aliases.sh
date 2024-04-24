# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# aliases for jsvu runtimes
export PATH=$PATH:/c/Users/jaood/.jsvu/bin

# Default path to Git-bash config folder C:\Program Files\Git\etc\profile.d
# --show-control-chars: help showing Korean or accented characters
alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -lh'
alias lsg='ls | grep'
# node with native syntax (with v8 internal %functions)
alias nodev8='node --allow-natives-syntax'
alias nodev8trace='node --allow-natives-syntax --trace-elements-transitions'
# node no optimization mode
alias nodeno='node --no-opt'
alias gs='git status'
alias gc='git commit'
alias gp='git push'
alias gpp='git pull'
alias exp='explorer .'
alias c='code .'
alias tmain="echo -e \"'use strict'; \n\n\" > main.js"

case "$TERM" in
xterm*)
	# The following programs are known to require a Win32 Console
	# for interactive usage, therefore let's launch them through winpty
	# when run inside `mintty`.
	for name in node ipython php php5 psql python2.7
	do
		case "$(type -p "$name".exe 2>/dev/null)" in
		''|/usr/bin/*) continue;;
		esac
		alias $name="winpty $name.exe"
	done
	;;
esac
