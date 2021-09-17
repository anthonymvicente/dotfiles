#
# ~/.bashrc.aliases
#

alias ls='ls --color=auto'
alias fuck='sudo $(history -p \!\!)'
alias vim='nvim'
alias vimfig='nvim ~/.config/nvim/init.vim'
cdl() { cd "$1" && ls; }

export QT_STYLE_OVERRIDE=gtk
export QT_SELECT=qt5

if [[ $LANG = '' ]]; then
	export LANG=en_US.UTF-8
fi

