#
# ~/.bash_profile
#

. ~/.profile

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

[[ $- == *i* ]] && . ~/.bashrc
