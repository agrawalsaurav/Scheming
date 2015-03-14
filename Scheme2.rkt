;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Scheme2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
 #lang racket
#||||||||||||||||||||||||||||||
Topological Sort  

Team:
Saurav Agrawal #
Ahmed #
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
|finds if the vertex is 0
|||||||||||||||||||||||||#
(define (vertex v)
  (if (> 1 (car v)) 
      vertex (car v)
      
  
  

(define (topoSort L)
  (if (null? L) null
      (cons (vertex (L)); returns the removed vertex
            (topoSort (cdr L)))))

       

       