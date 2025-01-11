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
  (let ((commit "8e5b995eb2439850ab21ba6062d9e6942c82ab9c"))
  (package
    (name "emacs-nerd-icons-completion")
    (home-page "https://github.com/rainstormstudio/nerd-icons-completion")
    (version "0.0.1")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference (url home-page) (commit commit)))
        (file-name (git-file-name name version))
        (sha256
          (base32
	   "0nbyrzz5sscycbr1h65ggzrm1m9agfwig2mjg7jljzw8dk1bmmd2"))))
    (propagated-inputs
      (list emacs-nerd-icons
	    emacs-compat))
    (build-system emacs-build-system)
    (synopsis "Nerd-icons an alternative to all-the-icons.")
    (description "Nerd-icons an alternative to all-the-icons.  It works on both
GUI and terminal, and requires a nerd font installed on your system.")
    (license license:gpl3))))

(define-public emacs-nerd-icons-dired
  (let ((commit "c1c73488630cc1d19ce1677359f614122ae4c1b9"))
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
        (base32 "1iwqzh32j6fsx0nl4y337iqkx6prbdv6j83490riraklzywv126a"))))
    (propagated-inputs
      (list emacs-nerd-icons))
    (build-system emacs-build-system)
    (home-page "https://github.com/rainstormstudio/nerd-icons-dired")
    (synopsis "nerd-icons theme for dired")
    (description "nerd-icons theme for dired")
    (license license:gpl3))))
