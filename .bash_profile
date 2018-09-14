#!/bin/bash
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]$ "
source ~/.profile # Get the paths
source ~/.bashrc
source ~/.bash/functions
source ~/.bash/aliases


# MacPorts Installer addition on 2012-02-10_at_17:59:00: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
