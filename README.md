# ansible
Ansible roles for fun and profit

Have a look at the `dev` branch for all roles I'm sharing - though use at your own risk :) Roles in `master` I have more faith in, but obviously I take no responsibility for a b0rked system..

Tests are welcome contributions. I'd like to work in a test-drvien way, I just hardly ever have the time..

## mailwrapper
This one automates the process described [here](http://kb.odin.com/en/114845), and is designed to output a log of all mail sent via PHP scripts with an additional "X-Additional-Header" which can then be searched if someone complains that your server is doing something naughty

It only works with Postfix (as opposed to qmail) for now, but from what I can see, postfix is far preferable to qmail anyway :)

It's designed to be idempotent via the main.yml, so if a file called sendmail.postfix-wrapper exists, it will exit gracefully (I used "debug" rather than "fail" here, so it can be used in a play with other roles without failing the whole play).

Tested on servers with Plesk. May well work on servers without Plesk, but untested.
## clamav_maldet
This will install maldet and clamav on Debian and/or Centos/RHEL.

**NB** This requires a specially packaged file, at a known location. You'll have to set the variable `{{ maldet_download }}` to this known location. Place the variable in the playbook itself, or group_vars, or wherever.

In terms of packaging the file, all you'll have to do is 

  - download the *.tar.gz from the official location (currently [here](http://www.rfxn.com/downloads/maldetect-current.tar.gz))
  - untar it
  - rename the containing directory to "maldetect-install"
  - tar it back up, naming the file with the name you'll assign to the variable `{{ maldet_download_file }}``
  - Make it available at the location you'll assign to the variable `{{ maldet_download }}`

The reason I did it this way is because it's possible that the download location and the name of the *.tar.gz file may change over time. This way, I can be reasonably sure that I'm downloading the file that I think I am.
