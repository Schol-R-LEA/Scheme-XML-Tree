#!r6rs

(library 
 (xml xml-instance-tree)
 (export xml-instance-node make-xml-instance-node xml-instance-node?
         xml-instance-tree make-xml-instance-tree xml-instance-tree?)
 (import 
  (rnrs (6))
  (rnrs base (6))
  (rnrs enums (6))
  (rnrs hashtables (6))
  (rnrs lists (6))
  (rnrs exceptions (6))
  (rnrs conditions (6))
  (rnrs records syntactic (6)))
 
 
 (define-record-type (xml-instance-node make-xml-instance-node xml-instance-node?)
   (fields tag (mutable node-type get-node-type set-node-type) attributes inner-xml)
   ())
 
 
 (define-record-type (xml-instance-tree make-xml-instance-tree xml-instance-tree?)
   (fields xml-version encoding schema data)))
 
 