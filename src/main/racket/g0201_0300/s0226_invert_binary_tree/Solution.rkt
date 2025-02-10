; #Easy #Depth_First_Search #Tree #Binary_Search #Binary_Tree #Binary_Search_II_Day_10
; #Top_Interview_150_Binary_Tree_General #2025_02_10_Time_0_(100.00%)_Space_129.49_(100.00%)

; Definition for a binary tree node.
#|

; val : integer?
; left : (or/c tree-node? #f)
; right : (or/c tree-node? #f)
(struct tree-node
  (val left right) #:mutable #:transparent)

; constructor
(define (make-tree-node [val 0])
  (tree-node val #f #f))

|#

(define/contract (count-nodes root)
  (-> (or/c tree-node? #f) exact-integer?)
  (if (not root)
      0
      (+ 1 (count-nodes (tree-node-left root))
           (count-nodes (tree-node-right root)))))
