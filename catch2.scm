(use-modules (guix packages)
	     (guix download)
	     (guix build-system cmake)
	     (guix packages python)
	     (guix licenses))
(package
 (name "catch2")
 (version "2.13.3")
 (source (origin
	  (method url-fetch)
	  (file-name "catch2")
	  (uri (string-append "https://github.com/catchorg/Catch2/archive/v" version ".tar.gz"))
	  (sha256
	   (base32 "0xx8jwb53477j0h7j15dz3q47i8ih89wgrwqa3s79dbyiw05pp7"))))
 (build-system cmake-build-system)
 (arguments
     `(#:configure-flags
       (list "-DBUILD_TESTING=OFF")))
 (synopsis "Catch2 Testing framework for C++")
 (description "Catch2 is mainly a unit testing framework for C++, but it also provides basic micro-benchmarking features, and simple BDD macros.")
 (home-page "https://github.com/catchorg/Catch2/")
 (license gpl3))
