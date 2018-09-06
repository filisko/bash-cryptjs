#!/usr/bin/env bash

# encrypt aes-256
function encrypt_aes256() {
  printf "$1" | openssl aes-256-cbc -md md5 -pass pass:"$2" | base64 -w 0
}

# decrypt aes-256
function decrypt_aes256() {
  printf "$1" | base64 -d 2>/dev/null | openssl aes-256-cbc -d -md md5 -pass pass:"$2" 2>/dev/null
}

# hash sha-512
function hash_sha512() {
  echo -n "$1" | sha512sum | cut -f 1 -d ' '
}
