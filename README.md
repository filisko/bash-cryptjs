# Crypto Bash functions for GNU/Linux

## encrypt/decrypt AES-256
```bash
function encrypt_aes256() {
  echo -n 'test' | openssl aes-256-cbc -pass pass:"123123123" | base64 -w 0
}
```

```bash
function decrypt_aes256() {
  printf 'U2FsdGVkX18whGWYiAU97dZ7WRF/ZSsqw+ALAXwLX54=' | base64 -d | openssl aes-256-cbc -d -md md5 -pass pass:"123123123"
}
```

## hash SHA-512
```bash
function hash_sha512() {
  echo -n "$1" | sha512sum | cut -f 1 -d ' '
}
```
