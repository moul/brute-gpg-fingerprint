# brute-gpg-fingerprint

[![GuardRails badge](https://badges.production.guardrails.io/moul/brute-gpg-fingerprint.svg)](https://www.guardrails.io)

:neckbeard: bruteforce `gpg --gen-key` to get a cool fingerprint

## Usage

First, you need to update the `stdin` file with your GPG options

---

##### Bruteforce

```console
$ yes | parallel --nice 19 ./gen.sh
```

---

##### See results

```console
$ ./grep.sh
```

## License

MIT
