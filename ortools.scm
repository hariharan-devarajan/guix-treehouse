(define-module (ortools)
  #:use-module (guix)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system copy)
  #:use-module (guix licenses)
  #:use-module (gnu packages)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages compression)
)

(define-public ortools
  (package
   (name "ortools")
   (version "8.0.8283")
   (source
    (origin
     (method url-fetch)
     (uri
      (string-append "https://github.com/google/or-tools/releases/download/v" (version-major+minor version) "/or-tools_" (getenv "GUIX_OS") "_v" version ".tar.gz"))
     (sha256
      (base32 "16fbwd098k7nps3rbgmjzcdgxb5arj1gvnr27mdh9r43p75xw5bs"))))
   (build-system copy-build-system)
   (arguments
     '(#:validate-runpath? #f))
   (inputs `(("zlib" ,zlib)
			("gcc:lib" ,gcc "lib")
             	      ))
   (synopsis "Google ORTools C++")
   (description "OR-Tools is an open source software suite for optimization, tuned for tackling the world's toughest problems in vehicle routing, flows, integer and linear programming, and constraint programming.")
   (home-page "https://developers.google.com/optimization")
   (license gpl3)))

ortools
