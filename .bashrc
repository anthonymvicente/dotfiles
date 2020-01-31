#
# ~/.bashrc
#

source ~/.bash_aliases

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

PS1='\W > '
