#!/usr/bin/env bash

# Load RVM, if you are using it
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Users/dstarh/.gem/ruby/1.8/bin:/opt/nginx/sbin


# Add rvm gems and nginx to the path
export PATH=$PATH:~/.gem/ruby/1.8/bin:/opt/nginx/sbin

# Path to the bash it configuration
export BASH_IT=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='dstarh'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Set my editor and git editor
export EDITOR="subl -n -w"
export GIT_EDITOR='subl -n -w'

# Set the path nginx
export NGINX_PATH='/opt/nginx'

# Don't check mail when opening terminal.
unset MAILCHECK


# Change this to your console based IRC client of choice.

export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli

export TODO="t"

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt
. ~/.bashrc
#if [ -f `brew --prefix`/etc/bash_completion ]; then
#		. `brew --prefix`/etc/bash_completion
#fi
ENV=$HOME/.bashrc
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export PLAY_HOME=/Users/dstarh/play-1.2.2
export MAVEN_HOME=/Users/dstarh/apache-maven-3.0.3
export PATH=$PATH:$MAVEN_HOME/bin:$PLAY_HOME:~/bin
export MAVEN_OPTS="-Xmx1024M -XX:MaxPermSize=512M"
export MAVEN_OPTS=" -Dexternal-config-location=classpath:empty_override.properties $MAVEN_OPTS"
export MAVEN_OPTS="-noverify -javaagent:/Applications/ZeroTurnaround/JRebel/jrebel.jar -Drebel.jersey_plugin=true $MAVEN_OPTS"
export MAVEN_OPTS=" -Djava.awt.headless=true $MAVEN_OPTS"
export MAVEN_OPTS=" -Djava.io.tmpdir=/Users/dstarh/javatmp $MAVEN_OPTS"
# Load Bash It
source $BASH_IT/bash_it.sh
