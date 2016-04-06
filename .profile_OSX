alias querydns='ssh nse1.enovance.com /root/bin/querydns -s $@'
alias ll='ls -laG'
alias grep='grep --color=auto'

##
# Your previous /Users/toddoli/.profile file was backed up as /Users/toddoli/.profile.macports-saved_2013-10-07_at_15:50:22
##

# MacPorts Installer addition on 2013-10-07_at_15:50:22: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#SSH autocomplete
_complete_ssh_hosts ()
{
        COMPREPLY=()
        cur="${COMP_WORDS[COMP_CWORD]}"
        comp_ssh_hosts=`cat ~/.ssh/known_hosts | \
                        cut -f 1 -d ' ' | \
                        sed -e s/,.*//g | \
                        grep -v ^# | \
                        uniq | \
                        grep -v "\[" ;
                cat ~/.ssh/config | \
                        grep "^Host " | \
                        awk '{print $2}'
                `
        COMPREPLY=( $(compgen -W "${comp_ssh_hosts}" -- $cur))
        return 0
}
complete -F _complete_ssh_hosts ssh

#Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi

#git prompt
if [ -f $(brew --prefix)/etc/bash_completion.d/git-prompt.sh ]; then
    source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
  fi
PS1='\u `pwd` $(__git_ps1 "(%s)")\$ '

#export LC_CTYPE="en_US.UTF-8"
export JAVA_HOME=$(/usr/libexec/java_home)
export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.1.1
export PATH=$PATH:$EC2_HOME/bin
export PATH=/usr/local/sbin:$PATH
export HISTFILESIZE=
export HISTSIZE=
