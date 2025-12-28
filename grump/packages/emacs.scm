(define-module (grump packages emacs)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system emacs)
  #:use-module ((guix licenses)
		#:prefix license:)
  #:use-module (guix git-download)
  #:use-module (gnu packages emacs)
  #:use-module (gnu packages emacs-xyz))

(define-public emacs-nerd-icons-completion
  (let ((commit "426a1d7c29a04ae8e6ae9b55b0559f11a1e8b420")
        (revision "0"))
    (package
     (name "emacs-nerd-icons-completion")
     (version "0.0.1")
     (source
      (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/rainstormstudio/nerd-icons-completion")
             (commit commit)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "03kkyxc9v38v1fc69xqc70gwvsq4pr8bgsk8f6is9z2w7p4y08sm"))))
     (propagated-inputs
      (list emacs-nerd-icons
            emacs-compat))
     (build-system emacs-build-system)
     (home-page "https://github.com/rainstormstudio/nerd-icons-completion")
     (synopsis "nerd-icons-completion - Use nerd-icons for completion")
     (description "nerd-icons-completion - Use nerd-icons for completion")
     (license license:gpl3))))

(define-public emacs-nerd-icons-dired
  (let ((commit "c1c73488630cc1d19ce1677359f614122ae4c1b9")
        (revision "0"))
    (package
     (name "emacs-nerd-icons-dired")
     (version "0.0.1")
     (source
      (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/rainstormstudio/nerd-icons-dired")
             (commit commit)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1ln73ii7c3chl4lvarwiwrdmx49q528wc0h6a7xbl68pc2pyyvq2"))))
     (propagated-inputs
      (list emacs-nerd-icons))
     (build-system emacs-build-system)
     (home-page "https://github.com/rainstormstudio/nerd-icons-dired")
     (synopsis "nerd-icons theme for dired")
     (description "nerd-icons theme for dired")
     (license license:gpl3))))

(define-public emacs-nerd-icons-corfu
  (let ((commit "7077bb76fefc15aed967476406a19dc5c2500b3c")
        (revision "0"))
    (package
     (name "emacs-nerd-icons-corfu")
     (version "0.3.0")
     (source
      (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/LuigiPiucco/nerd-icons-corfu")
             (commit commit)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "13m20k242zma6jw7pkbw89fk3dnbkwdajcpiyay5xx2l9241snb7"))))
     (propagated-inputs
      (list emacs-nerd-icons))
     (build-system emacs-build-system)
     (home-page "https://github.com/LuigiPiucco/nerd-icons-corfu")
     (synopsis "Icons for corfu via nerd-icons ")
     (description "nerd-icons-corfu.el - Icons for Corfu via nerd-icons")
     (license license:gpl3))))
