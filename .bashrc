#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias spotify="/usr/bin/spotify --force-device-scale-factor=2"
alias c="cmake .."
alias m="make"
#export GDK_SCALE=2
export GDK_SCALE=1
PS1='[\u@\h \W]\$ '
