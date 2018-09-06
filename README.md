# Crypto AES-256 in GNU/Linux

Encrypt and decrypt with AES-256 following the [Crypto standards](https://code.google.com/archive/p/crypto-js/) in GNU/Linux:

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
