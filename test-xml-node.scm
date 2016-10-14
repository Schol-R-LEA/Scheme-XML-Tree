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


(let ((br "<br />")
      (img "<img src=\"http://foo.bar/guys.gif\" alt=\"Photo of Guy Steele and Guy Fieri (how did those two meet?\" />")
      (par))
  (test-with-runner runner 
    (test-group "Test creating node from a set of pre-parsed XML elements" 
      (test-group "Simple self-closing tag"
        (test-assert (string=? "br" (get-element node))))
      (test-group "Self-closing tag with attributes"
        (define node (parse-xml img))
        (test-assert (string=? "img" (get-element node))))
      (test-group "Simple start tag"
        (define node (make-xml-instance-node br))
        (test-assert (string=? "br" (get-element node))))
      (test-group "Simple self-closing tag"
        (define node (make-xml-instance-node br))
        (test-assert (string=? "br" (get-element node))))
      (test-group "Simple self-closing tag"
        (define node (make-xml-instance-node br))
        (test-assert (string=? "br" (get-element node))))
      (test-group "Simple self-closing tag"
        (define node (make-xml-instance-node br))
        (test-assert (string=? "br" (get-element node)))))))
    
;    (test-group "Tests recognition of XML tags"       
;      (test-group "Simple self-closing tag"
;        (let ((node (parse-xml br))
;              (test-assert (string=? "br" (get-element node))))))
;      (test-group "Self-closing tag with attributes"
;        (let ((node (parse-xml img))
;              (test-assert (string=? "img" (get-element node))))))
;      (test-group "Simple start tag"
;        (let ((node (parse-xml img))
;              (test-assert (string=? "img" (get-element node))))))
;      (test-group "Simple self-closing tag"
;        (let ((node (parse-xml img))
;              (test-assert (string=? "img" (get-element node))))))
;      (test-group "Simple self-closing tag"
;        (let ((node (parse-xml img))
;              (test-assert (string=? "img" (get-element node))))))
;      (test-group "Simple self-closing tag"
;        (let ((node (parse-xml img))
;              (test-assert (string=? "img" (get-element node)))))))))
