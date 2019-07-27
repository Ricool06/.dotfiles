alias update-micro='( cd /tmp && curl https://getmic.ro | bash && sudo mv ./micro /usr/local/bin && sudo chown root:root /usr/local/bin/micro )'
alias update-bash_profile='micro ~/.bash_profile && source ~/.bash_profile'
alias list-default-packages="awk '{print $1}' ~/.default-packages"
alias install-default-packages="xargs sudo apt install -y < ~/.default-packages"

alias git-first-push="git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)"
