(define-module (ortools)
  #:use-module (guix)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system copy)
  #:use-module (guix licenses)
  #:use-module (gnu packages)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages protobuf)
  #:use-module (gnu packages autotools)
  
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages python)
  #:use-module (gnu packages protobuf)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages compression)
)

(define-public ortools
  (package
   (name "ortools")
   (version "9.0.9048")
(source
    (origin
     (method url-fetch)
     (uri
      (string-append "https://github.com/google/or-tools/releases/download/v"
		     (version-major+minor version)
		     "/or-tools_"
		     (getenv "OS_NAME")
		     "_v"
		     version
		     ".tar.gz"))
     (sha256
      (base32 "0l7bj0hzg825vgvmh17y2qs72cj5j0g5d72vn85kpqjsfvcb2gq6"))))
   (build-system copy-build-system)
(arguments
 '(#:validate-runpath? #f))

   ;; (native-inputs
   ;;  `(("autoconf" ,autoconf)
   ;;    ("automake" ,automake)
   ;;    ("libtool" ,libtool)))
   (propagated-inputs `(("zlib" ,zlib)
	     ("gcc:lib" ,gcc-5 "lib")
              	      ))
   (synopsis "Google ORTools C++")
   (description "OR-Tools is an open source software suite for optimization, tuned for tackling the world's toughest problems in vehicle routing, flows, integer and linear programming, and constraint programming.")
   (home-page "https://developers.google.com/optimization")
   (license gpl3)))

ortools
