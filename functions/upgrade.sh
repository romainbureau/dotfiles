#!/usr/bin/env bash

BIN_DIR="$HOME/bin"

function upgrade_terraform() {
	local VERSION="${1}"
	if [[ -z ${VERSION} ]]; then
		echo "Please, specify a version (example: 0.13.4)"
	else
		local URL="https://releases.hashicorp.com/terraform/0.13.4/terraform_${VERSION}_linux_amd64.zip"
		local FILENAME="$(basename ${URL})"
		echo "${URL}"
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
		echo "${URL}"
		curl -L -o "/tmp/${FILENAME}" "${URL}"
		tar -xvzf "/tmp/${FILENAME}" -C "/tmp" "delta-${VERSION}-x86_64-unknown-linux-gnu/delta"
		mv "/tmp/delta-${VERSION}-x86_64-unknown-linux-gnu/delta" "${BIN_DIR}"
	fi
}
