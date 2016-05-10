#!r6rs

(import 
 (rnrs (6))
 (rnrs base (6))
 (rnrs enums (6))
 (rnrs io simple (6))
 (rnrs hashtables (6))
 (srfi :64)
 (rnrs lists (6))
 (rnrs exceptions (6))
 (rnrs conditions (6))
 (rnrs records syntactic (6))
 (xml-instance-node))

(define runner (test-runner-simple))

(test-with-runner 
 runner 
 (test-group "Tests recognition of XML tags"
             (test-group "Simple self-closing tag"
                         (define br "<br />")
                         (define node (make-xml-instance-node br))
                         (test-assert (string=? "br" (get-value node))))))
