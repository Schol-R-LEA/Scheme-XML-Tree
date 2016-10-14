#!r6rs

(library 
 (xml xml-instance-node)
 (export xml-instance-node make-xml-instance-node xml-instance-node?
         xml-element-type xml-element-type-set
         xml-start-tag-open xml-exit-tag-open xml-tag-close 
         xml-entity-ref xml-char-ref)
 (import 
  (rnrs (6))
  (rnrs base (6))
  (rnrs enums (6))
  (rnrs hashtables (6))
  (rnrs lists (6))
  (rnrs exceptions (6))
  (rnrs conditions (6))
  (rnrs records syntactic (6))) 
 
 (define xml-start-tag-open #\<)
 (define xml-exit-tag-open "</")
 (define xml-tag-close #\>) 
 
 (define-enumeration xml-element-type 
   (separator xml-decl text-decl data empty-tag start-tag end-tag entity-ref char-ref pi cdata dtd comment)
   xml-element-type-set)
 
 (define-record-type 
   (xml-instance-node make-xml-instance-node xml-instance-node?)
   (fields node-type
           (immutable element get-element)
           attributes
           inner-xml)
   (protocol 
    (lambda (ctor)
      (lambda (element-text attribute-list inner-xml-nodes)
        (ctor element-text attribute-list inner-xml-nodes)))))


(define separator?
  (lambda (str)
    
    
    