(define-module (guix packages)
#:use-module  (guix download)
#:use-module     (guix build-system copy)
#:use-module     (guix licenses)
#:use-module     (gnu packages)
#:use-module     (gnu packages python))

(define-public spack
(package
 (name "spack")
 (version "0.16.1")
 (source (origin
	  (method url-fetch)
	  (uri (string-append "https://github.com/spack/spack/releases/download/v" version "/spack-" version ".tar.gz"))
	  (sha256
	   (base32 "0rvmasfacdksi9pk93wijb9niz74cvfk7b21xvzf17jdn8v312cd"))))
 (build-system copy-build-system)
 (inputs `(("python", python)))
 (synopsis "Spack package manager")
 (description "Spack is a multi-platform package manager that builds and installs multiple versions and configurations of software.")
 (home-page "https://spack.readthedocs.io/")
 (license gpl3)))
