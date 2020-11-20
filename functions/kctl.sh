#!/usr/bin/env bash

function kctllistressources() {
  local ressouces="${1}"
  local ns
  if [[ -z "${2}" ]];then
    ns="$(kubens -c)"
  else
    ns="${2}"
  fi
  kubectl get ${ressouces} -n ${ns}
}

function kctldescressource() {
  local ressouce="${1}"
  local ns
  if [[ -z "${2}" ]];then
    ns="$(kubens -c)"
  else
    ns="${2}"
  fi
  kubectl describe ${ressouce} -n ${ns} $(kubectl get ${ressouce} -n ${ns} --no-headers -o custom-columns=":metadata.name"|fzf)
}

function kctlpodexec() {
  local cmd
  local ns
  if [[ -z "${1}" ]];then
    cmd="/bin/sh"
  else
    cmd="${1}"
  fi
  if [[ -z "${2}" ]];then
    ns="$(kubens -c)"
  else
    ns="${2}"
  fi
  kubectl exec $(kubectl get pods -n ${ns} --no-headers -o custom-columns=":metadata.name"|fzf) -it -n ${ns} -- ${cmd}
}
