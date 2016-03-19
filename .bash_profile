#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
export TERM=terminator

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
