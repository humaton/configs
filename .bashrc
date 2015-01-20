# .bashrc
  parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
   }
PS1="\w\[\033[31m\] \$(parse_git_branch)\[\033[00m\]\[\033[00m\] $ "
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH
export BODHI_USER=humaton

