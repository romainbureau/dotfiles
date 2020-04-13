#!/usr/bin/env bash

export PASSWORD_STORE_DIR="$HOME/.password-store"

list_passwords() {
  find $PASSWORD_STORE_DIR -type f ! -path "*.git*" -printf '%P\n'|sed s'|.gpg$||'
}
