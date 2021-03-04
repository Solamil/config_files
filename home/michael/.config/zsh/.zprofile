export PATH=$PATH:"$HOME/.local/bin"$(find $HOME/scripts -type d -printf ":%p")
export PATH=$PATH:"$HOME/.local/share/npm/bin"	
export EDITOR="nvim"
export BROWSER="qutebrowser"
export INPUTRC=$HOME"/.config/inputrc"
export DOTFILE_DIR=$HOME"/devel/config_files"
export LESSHISTFILE=$HOME"/.config/less/lesshst"
export GNUPGHOME=$HOME"/.local/share/gnupg"
export PASSWORD_STORE_DIR=$HOME"/.local/share/password-store"
export ZDOTDIR=$HOME"/.config/zsh"
export PKGDATADIR=$HOME"/.config"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export XDG_CACHE_HOME="$HOME/.local/cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export FZF_DEFAULT_OPTS="--layout=reverse --height 60%"
# NPM
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
# NODEJS
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history

export TEXMFHOME=$XDG_DATA_HOME/texmf
export TEXMFVAR=$XDG_CACHE_HOME/texlive/texmf-var
export TEXMFCONFIG=$XDG_CONFIG_HOME/texlive/texmf-config

if [[ ! $DISPLAY && "$(tty)" = "/dev/tty1" ]]; then
	[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx "$XDG_CONFIG_HOME/X11/xinitrc" -- vt1 &> /dev/null
fi
