#
# ~/.bash_profile
#
if [[ ! ${DISPLAY} && ${XDG_VTNR} == 1 ]]; then
	exec tbsm
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
