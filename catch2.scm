(define-module  (catch)
  #:use-module (guix)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system cmake)
  #:use-module (guix licenses))

(define-public catch
 (package
 (name "catch2")
 (version "2.13.3")
 (source (origin
	  (method url-fetch)
	  (uri (string-append "https://github.com/catchorg/Catch2/archive/v" version ".tar.gz"))
	  (sha256
	   (base32 "0xx8jwb53477j0h7j15dz3q47i8ih89wgrwqa3s79dbyiw05pp7"))))
 (build-system cmake-build-system)
 (arguments
  `(#:configure-flags '("-DBUILD_TESTING=OFF"))
 )
 (synopsis "Catch2 Testing framework for C++")
 (description "Catch2 is mainly a unit testing framework for C++, but it also provides basic micro-benchmarking features, and simple BDD macros.")
 (home-page "https://github.com/catchorg/Catch2/")
 (license gpl3)))
