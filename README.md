# Crypto Bash functions for GNU/Linux

Simple repo to collect functions of crypto standards for Bash.

```shell
git clone https://github.com/filisko/crypto-bash
chmod +x ./examples.sh ./crypto.sh # execute perms
./example.sh # run examples
```

## encrypt/decrypt AES-256
```bash
# include functions
source '/path/to/crypto.sh'

correct_key='my_secure_key'
wrong_key='incorrect_key'

encrypted=$(encrypt_aes256 'this is my secret content' "$key")
echo "Encrypted content: $encrypted"

decrypted=$(decrypt_aes256 "$encrypted" "$key")
echo "Decrypted content: $decrypted"

# decrypt checking status
decrypted=$(decrypt_aes256 "$encrypted" "$wrong_key")
if [ $? -eq 0 ]; then
  echo "Successfully decrypted!: $decrypted"
else
  echo "Failed to decrypt!"
fi
```

## hash SHA-512
```bash
# include functions
source '/path/to/crypto.sh'

sha512_content="hashme"
sha512_hash=$(hash_sha512 "$sha512_content")

echo "Content: $sha512_content"
echo "Hash: $sha512_hash"
# 8a4b59fb9188d09b989ff596ac9cefbf2ed91ded8dcd9498e8bf2236814a92b23be6867e7fc340880e514f8fdf97e1f147ea4b0fd6c2da3557d0cf1c0b58a204
```
