---
layout: post
title: Add new key to APT AKA tell APT to trust given key
date: 2015-04-30 08:00:03.00 +02:00
tag: ["Linux"]
---

One of my desktop box I recently got this message when I wanted to update it via `apt` :

```
Fetched 1448 B in 8s (180 B/s)
Reading package lists... Done
W: An error occurred during the signature verification. The repository is not updated and the previous index files will be used.
GPG error: http://xxxxxxx ./ Release: The following signatures couldn't be verified because
the public key is not available: NO_PUBKEY 0000000000
```
&nbsp;

Solution for it is very straight forward but lets write it down here since I always forgot how to do this.
Here it is:

```
gpg --keyserver subkeys.pgp.net --recv-keys keyId
gpg -a --export keyId | sudo apt-key add -
```
Of course you will need to replace `keyId` with a real GPG key which is missing/uknown to APT.

Additiona resources - [SecureApt Debian wiki page](https://wiki.debian.org/SecureApt)

--robert
