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
		     "2848e456a788aaf47fbed7f6201251b289d75d05"
			 (opengpg-fingerprint
			   "1B7E 1A8F 551F BBB8 7E83  A040 C9F6 5395 68C2 EB28"))))
	     %default-channels)
```
Then run `guix pull`.
