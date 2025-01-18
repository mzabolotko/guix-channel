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

(define-public emacs-nerd-icons-corfu
  (let ((commit "41110180ceab9d0edaa856d19633b2b3fdf82e75"))
  (package
     (name "emacs-nerd-icons-corfu")
     (version "0.0.1")
     (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/LuigiPiucco/nerd-icons-corfu")
             (commit commit)))
       (file-name (git-file-name name version))
       (sha256
         (base32 "0mwng5khhq6iqmr0ip8fv227cnkv0mv5664qz57r7sbjplqyabgf"))))
     (propagated-inputs
      (list emacs-nerd-icons))
     (build-system emacs-build-system)
     (home-page "https://github.com/LuigiPiucco/nerd-icons-corfu")
     (synopsis "Icons for corfu via nerd-icons ")
     (description "nerd-icons-corfu.el - Icons for Corfu via nerd-icons")
     (license license:gpl3))))

(define-public emacs-lsp-haskell
  (let ((commit "6981f8d1225c038c1a130e8cf70530cfe15f976e"))
    (package
      (name "emacs-lsp-haskell")
      (version "1.1")
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/emacs-lsp/lsp-haskell.git")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32 "1l51v2di8hgm2n8fb8kj5q6ns501vfkv5706v1q0fa8amvmralgb"))))
      (build-system emacs-build-system)
      (propagated-inputs (list mz-emacs-lsp-mode emacs-haskell-mode))
      (home-page "https://github.com/emacs-lsp/lsp-haskell.git")
      (synopsis "lsp-mode heart haskell")
      (description
       "An Emacs Lisp library for interacting with a Haskell language server
such as haskell-language-server using Microsoft's Language Server Protocol.")
      (license license:gpl3+))))

(define emacs-lsp-mode-9.0.1
  (let ((commit "5d964348d35ff7eaddb7e9712c82d0f14d49a7e5"))
    (package
     (inherit emacs-lsp-mode)
     (version "9.0.1")
     (name "mz-emacs-lsp-mode")
     (source
      (origin
      (method git-fetch)
      (uri (git-reference
        (url "https://github.com/emacs-lsp/lsp-mode")
        (commit commit)))
      (file-name (git-file-name name version))
      (sha256
       (base32 "0ppijcxs1vgfh73g5lapp4bf07izjmpw2yg5payckg7k2zgy7zrv")))))))
