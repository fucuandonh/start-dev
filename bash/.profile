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

#set PATH so it includes apx-cli
if [ -d "$HOME/dev/apx/apx-cli" ] ; then
    PATH="$HOME/dev/apx/apx-cli:$PATH"
fi

#set PATH so it includes java-version
if [ -d "/usr/lib/jvm/java-8-openjdk-amd64" ] ; then
    JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
    PATH="$JAVA_HOME:$PATH"
fi

#set PATH so it includes maven
if [ -d "$HOME/.m2" ] ; then    
    M2_HOME="$HOME/.m2"
    PATH="$M2_HOME/repository:$PATH"
fi

#set PATH so it includes maven
if [ -d "/ENTORNO_LOCAL_APX" ] ; then    
    M2_HOME="$HOME/.m2"
    PATH="$M2_HOME/repository:$PATH"
fi

#set PATH so it includes maven
if [ -d "$HOME/.m2" ] ; then    
    M2_HOME="$HOME/.m2"
    PATH="$M2_HOME/repository:$PATH"
fi

