#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias vim='nvim'
alias vi='nvim'
alias ls='ls --color=auto'
alias dl='cd $HOME/downloads'
alias git-acw="git --git-dir=/home/michael/devel/config_files/.git \
	--work-tree=/home/michael/devel/config_files/"

PS1='[\u@\h \W]\$ '

se(){
	du -a $HOME/devel $HOME/bin $HOME/.mutt $HOME/.config --exclude=".git" --exclude="weap" --exclude="mail" --exclude="cache"| awk '{print $2}' | fzf | xargs -r $EDITOR
}
smusic(){
	find /media/michael/HardDrive/Music/ -name "*" |  sed 's! !\\ !g' | fzf | xargs -r mpv
}
smovie(){
	find /media/michael/HardDrive/Movies/ -name "*" |  sed 's! !\\ !g' | fzf | xargs -r mpv
}
