# Overview

Add Jerry's UNIX user and SSH pubkey to the relevant server (and optionally that of a mate's)

Adds "jerry" by default, takes optional arguments for shell,groups and password:
```
login_users:
  - name: me
    shell: /bin/bash
    sudo: yes
  - name: mymate
    shell: /bin/bash
## no sudo for you matey!!!
```

Expects key files (somewhat unconventionally) to be provided as the `files/` directory of the role, in the format `<username>.key.pub`. Will ignore errors if no key exists

If `secure_ssh` is defined, it will make sure root SSH is turned off.

TODO: Improve the `files/` thing, maybe add a default location where they're expected..
