#
# ~/.bash_profile
#
if [[ ! ${DISPLAY} && ${XDG_VTNR} == 1 ]]; then
	exec tbsm
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f ~/.localrc ]] && . ~/.localrc

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"
