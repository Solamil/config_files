#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -f ~/.config/aliasrc ] && . ~/.config/aliasrc

PS1='[\u@\h \W]\$ '

se(){
	du -a $HOME/devel $HOME/bin $HOME/.mutt $HOME/.config $HOME/scripts --exclude=".git" --exclude="weap" --exclude="mail" --exclude="cache"| awk '{print $2}' | fzf | xargs -r $EDITOR
}
smusic(){
	find /media/michael/HardDrive/Music/ -name "*" |  sed 's! !\\ !g' | fzf | xargs -r mpv
}
smovie(){
	find /media/michael/HardDrive/Movies/ -name "*" |  sed 's! !\\ !g' | fzf | xargs -r mpv
}
