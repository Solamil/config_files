#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias vim='nvim'
alias vi='nvim'
alias ls='ls --color=auto'

alias git-acw="git --git-dir=/home/michael/development/config_files/.git \
	--work-tree=/home/michael/development/config_files/"
PS1='[\u@\h \W]\$ '


