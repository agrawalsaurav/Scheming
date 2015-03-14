;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Scheme2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
#||||||||||||||||||||||||||||||
Topological Sort  

Team: ASN Paradigm
Saurav Agrawal #
Ahmed Syed #
Nathan Kong #7
CS152-01
|||||||||||||||||||||||||||||||||#

;define a counter =1
;find a vertex with zero indegree
;assign vertex topoNum = counter
;remove vertex and edges
;increase counter by one
;repeat steps 2 to 5 as long as there is a vertex with indegree


#|||||||||||||||||||||||||
returns which vertex 
has 0 indegrees
|||||||||||||||||||||||||#
(define (vertex v x)
  (if (> 1 (car v)) x (vertex (cdr v) (+ x 1))))
      
#|||||||||||||||||||||||||
creates 2 list of
numbers and indegrees
|||||||||||||||||||||||||#
(define (theList L)
  (if (null? L) null
      (cons (num L) 
        (indegree L))))

#|||||||||||||||||||||||||
creates a list of the
vertices
|||||||||||||||||||||||||#
(define (num L)
  (if (null? L) null
      (cons (caar L)
            (num (cdr L)))))

#||||||||||||||||||||||||
creates a list of indegree
||||||||||||||||||||||||#
(define (indegree L)
  (if (null? L) null
      ))
        
  
#||||||||||||||||||||||||
Sorts an DAG
Assume no infinite loops
|||||||||||||||||||||||#
(define (topoSort L)
  (if (null? L) null
      (cons (theList L); returns the removed vertex
           )))

       