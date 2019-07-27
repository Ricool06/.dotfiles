# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

alias update-micro='( cd /tmp && curl https://getmic.ro | bash && sudo mv ./micro /usr/local/bin && sudo chown root:root /usr/local/bin/micro )'
alias update-shell-profile='micro ~/.profile && source ~/.profile'
alias list-default-packages="awk '{print $1}' ~/.default-packages"
alias install-default-packages="xargs sudo apt install -y < ~/.default-packages"

alias git-first-push='git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'
