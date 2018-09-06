#!/usr/bin/env bash

source './crypto.sh'

# aes-256 examples
echo "-----------------------------"
echo "AES-256 encryption/decryption"
echo "-----------------------------"

aes256_content="this is my secret content"
aes256_key="my_secure_key"

aes256_encrypted_text=$(encrypt_aes256 "$aes256_content" "$aes256_key")
aes256_decrypted_text=$(decrypt_aes256 "$aes256_encrypted_text" "$aes256_key")
decryption_status=$?

echo "Content: $aes256_content"
echo "Key: $aes256_key"
echo "Encrypted content: $aes256_encrypted_text"

if [ $decryption_status -ne 0 ]; then
  echo "Decryption failed!"
else
  echo "Decrypted content: $aes256_decrypted_text"
fi

echo ""
echo "---------------"
echo "SHA-512 hashing"
echo "---------------"
sha512_content="this is my secret content"
sha512_hash=$(hash_sha512 "$sha512_content")

echo "Content: $sha512_content"
echo "Hash: $sha512_hash"
