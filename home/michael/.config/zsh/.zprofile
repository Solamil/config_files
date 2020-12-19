export PATH=$PATH:$HOME/bin$(find $HOME/scripts -type d -printf ":%p")
export EDITOR="nvim"
export BROWSER="qutebrowser"
export INPUTRC=$HOME"/.config/inputrc"
export DOTFILE_DIR=$HOME"/devel/config_files"
export LESSHISTFILE=$HOME"/.config/less/lesshst"
export GNUPGHOME=$HOME"/.local/share/gnupg"
export PASSWORD_STORE_DIR=$HOME"/.local/share/password-store"
export IMWHEELRC=$HOME"/.config/imwheel/config"
export ZDOTDIR=$HOME"/.config/zsh"
export PKGDATADIR=$HOME"/.config"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

if [[ ! $DISPLAY && "$(tty)" = "/dev/tty1" ]]; then
	[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1 &> /dev/null
fi
