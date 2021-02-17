#!/usr/bin/env bash

function upgrade_all() {
  upgrade_terraform "0.14.6"
  upgrade_delta "0.4.4"
  upgrade_kubectl "1.19.4"
  upgrade_kubectx "0.9.1"
  upgrade_kubens "0.9.1"
  upgrade_kail "0.15.0"
  upgrade_fzf "0.24.2"
  upgrade_kubeseal "0.13.1"
}


BIN_DIR="$HOME/bin"

function upgrade_terraform() {
	local VERSION="${1}"
	if [[ -z ${VERSION} ]]; then
		echo "Please, specify a version (example: 0.13.4)"
	else
		local URL="https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip"
		local FILENAME="$(basename ${URL})"
		curl -o "/tmp/${FILENAME}" "${URL}"
		unzip "/tmp/${FILENAME}" -d "${BIN_DIR}"
	fi
}

function upgrade_delta() {
	local VERSION="${1}"
	if [[ -z ${VERSION} ]]; then
		echo "Please, specify a version (example: 0.4.4)"
	else
		local URL="https://github.com/dandavison/delta/releases/download/${VERSION}/delta-${VERSION}-x86_64-unknown-linux-gnu.tar.gz"
		local FILENAME="$(basename ${URL})"
		curl -L -o "/tmp/${FILENAME}" "${URL}"
		tar -xvzf "/tmp/${FILENAME}" -C "/tmp" "delta-${VERSION}-x86_64-unknown-linux-gnu/delta"
		mv "/tmp/delta-${VERSION}-x86_64-unknown-linux-gnu/delta" "${BIN_DIR}"

	fi
}

function upgrade_kubectl() {
  local VERSION="${1}"
  if [[ -z ${VERSION} ]]; then
    echo "Please, specify a version (example: 1.19.0)"
  else
    local FILENAME="kubectl"
    local URL="https://storage.googleapis.com/kubernetes-release/release/v${VERSION}/bin/linux/amd64/${FILENAME}"
    curl -L -o "${BIN_DIR}/${FILENAME}" "${URL}"
    chmod +x "${BIN_DIR}/${FILENAME}"
  fi
}

function upgrade_kubectx() {
  local VERSION="${1}"
  if [[ -z ${VERSION} ]]; then
    echo "Please, specify a version (example: 0.9.1)"
  else
    local FILENAME="kubectx"
    local URL="https://github.com/ahmetb/kubectx/releases/download/v${VERSION}/${FILENAME}_v${VERSION}_linux_x86_64.tar.gz"
    curl -L -o "/tmp/${FILENAME}" "${URL}"
    tar -xvzf "/tmp/${FILENAME}" -C "/tmp" "${FILENAME}"
    mv "/tmp/${FILENAME}" "${BIN_DIR}/${FILENAME}"
    chmod +x "${BIN_DIR}/${FILENAME}"
  fi
}

function upgrade_kubens() {
  local VERSION="${1}"
  if [[ -z ${VERSION} ]]; then
    echo "Please, specify a version (example: 0.9.1)"
  else
    local FILENAME="kubens"
    local URL="https://github.com/ahmetb/kubectx/releases/download/v${VERSION}/${FILENAME}_v${VERSION}_linux_x86_64.tar.gz"
    curl -L -o "/tmp/${FILENAME}" "${URL}"
    tar -xvzf "/tmp/${FILENAME}" -C "/tmp" "${FILENAME}"
    mv "/tmp/${FILENAME}" "${BIN_DIR}/${FILENAME}"
    chmod +x "${BIN_DIR}/${FILENAME}"
  fi
}

function upgrade_kail() {
  local VERSION="${1}"
  if [[ -z ${VERSION} ]]; then
    echo "Please, specify a version (example: 0.15.0)"
  else
    local FILENAME="kail"
    local URL="https://github.com/boz/kail/releases/download/v${VERSION}/${FILENAME}_${VERSION}_linux_amd64.tar.gz"
    curl -L -o "/tmp/${FILENAME}" "${URL}"
    tar -xvzf "/tmp/${FILENAME}" -C "/tmp" "${FILENAME}"
    mv "/tmp/${FILENAME}" "${BIN_DIR}/${FILENAME}"
    chmod +x "${BIN_DIR}/${FILENAME}"
  fi
}

function upgrade_fzf() {
  local VERSION="${1}"
  if [[ -z ${VERSION} ]]; then
    echo "Please, specify a version (example: 0.24.2)"
  else
    local FILENAME="fzf"
    local URL="https://github.com/junegunn/${FILENAME}/releases/download/${VERSION}/${FILENAME}-${VERSION}-linux_amd64.tar.gz"
    curl -L -o "/tmp/${FILENAME}" "${URL}"
    tar -xvzf "/tmp/${FILENAME}" -C "/tmp" "${FILENAME}"
    mv "/tmp/${FILENAME}" "${BIN_DIR}/${FILENAME}"
    chmod +x "${BIN_DIR}/${FILENAME}"
  fi
}

function upgrade_kubeseal() {
  local VERSION="${1}"
  if [[ -z ${VERSION} ]]; then
    echo "Please, specify a version (example: 0.13.1)"
  else
    local FILENAME="kubeseal"
    local URL="https://github.com/bitnami-labs/sealed-secrets/releases/download/v${VERSION}/${FILENAME}-linux-amd64"
    curl -L -o "/tmp/${FILENAME}" "${URL}"
    mv "/tmp/${FILENAME}" "${BIN_DIR}/${FILENAME}"
    chmod +x "${BIN_DIR}/${FILENAME}"
  fi
}

function upgrade_mc() {
  local URL="https://dl.min.io/client/mc/release/linux-amd64/mc"
  local FILENAME="$(basename ${URL})"
  curl -o "${BIN_DIR}/${FILENAME}" "${URL}"
  chmod +x "${BIN_DIR}/${FILENAME}"
}

