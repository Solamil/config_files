
if [[ ! $DISPLAY && "$(tty)" = "/dev/tty1" ]]; then
	[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1 &> /dev/null
fi
