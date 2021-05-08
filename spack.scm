(use-modules (guix packages)
	     (guix download)
	     (guix build-system copy)
	     (guix packages python)
	     (guix licenses))
(package
 (name "spack")
 (version "0.16.1")
 (source (origin
	  (method url-fetch)
	  (file-name "spack")
	  (uri (string-append "https://github.com/spack/spack/releases/download/v" version "/spack-" version ".tar.gz"))
	  (sha256
	   (base32 "0rvmasfacdksi9pk93wijb9niz74cvfk7b21xvzf17jdn8v312cd"))))
 (build-system copy-build-system)
 (synopsis "Spack package manager")
 (description "Spack is a multi-platform package manager that builds and installs multiple versions and configurations of software.")
 (home-page "https://spack.readthedocs.io/")
 (license gpl3))
