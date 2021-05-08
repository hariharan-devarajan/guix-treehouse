(define-module (catch2)
  #:use-module (guix)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system cmake)
  #:use-module (guix licenses))

(define-public catch2
  (package
   (name "catch2")
   (version "2.13.6")
   (source
    (origin
     (method url-fetch)
     (uri
      (string-append "https://github.com/catchorg/Catch2/archive/refs/tags/v" version ".tar.gz"))
     (sha256
      (base32 "1m7v4kghyj38jrsn0w544nvbk0q35qyn7y9dwzj56dhrp5vvpps8"))))
   (build-system cmake-build-system)
   (arguments
    `(#:configure-flags '("-DBUILD_TESTING=OFF")
      #:phases
      (modify-phases %standard-phases
		     (delete 'check))))
   (synopsis "Catch2 Testing framework for C++")
   (description "Catch2 is mainly a unit testing framework for C++, but it also provides basic micro-benchmarking features, and simple BDD macros.")
   (home-page "https://github.com/catchorg/Catch2/")
   (license gpl3)))
