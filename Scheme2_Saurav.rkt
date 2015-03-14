;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Scheme2_Saurav) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))

;Create a list of vertices
(define myList '((1 2 3 4) (2 4 5) (3 6) (4 3 6 7) (5 4 7) (6) (7 6)))


;count number of times a vertex appears in the list with an incoming arrow including reference to itself
(define (frequency allVertex vertex)               
                     (if (null? allVertex)  0 (if (not(member (car vertex) (car allVertex))) (frequency (cdr allVertex) vertex) (+ 1 (frequency (cdr allVertex) vertex)))))


;Exclude the reference to itself
(define (numDegrees allVertex vertex) (- (frequency allVertex vertex) 1))


;Checks how many incoming degrees are in the vertex and returns the index if there are 0
(define (zeroDegrees myList index) (if (= (numDegrees myList (list-ref myList index)) 0) index (zeroDegrees myList (+ index 1))))


;Call to find the 1st vertex with zero incoming edges
(zeroDegrees myList 0)



