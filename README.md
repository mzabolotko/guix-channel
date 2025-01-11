Private repository to be used for channel augmentation.

# Installation
Can be installed as a Guix channel. To do so, add it to `~/.config/guix/channels.scm`:
```
(cons* (channel
         (name 'mz-channel)
		 (url "https://github.com/mzabolotko/guix-channel")
		 (branch "master")
		 ;; Enable signature verification:
		 (introduction
		   (make-channel-introduction
		     "544cd01c16650252079f9111d81f887976ccf3ca"
			 (openpgp-fingerprint
			   "1B7E 1A8F 551F BBB8 7E83  A040 C9F6 5395 68C2 EB28"))))
	     %default-channels)
```
Then run `guix pull`.
