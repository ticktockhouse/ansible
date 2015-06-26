# ansible
Ansible roles for fun and profit
## mailwrapper
This one automates the process described [here](http://kb.odin.com/en/114845), and is designed to output a log of all mail sent via PHP scripts with an additional "X-Additional-Header" which can then be searched if someone complains that your server is doing something naughty

It only works with Postfix (as opposed to qmail) for now, but from what I can see, postfix is far preferable to qmail anyway :)

It's designed to be idempotent via the main.yml, so if a file called sendmail.postfix-wrapper exists, it will exit gracefully (I used "debug" rather than "fail" here, so it can be used in a play with other roles without failing the whole play).
## clamav_maldet
This will install maldet and clamav on Debian and/or Centos/RHEL.

**NB** This requires a specially packaged file, at a known location. You'll have to set the variable {{ maldet_download }}
