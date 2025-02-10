; #Easy #Top_100_Liked_Questions #Depth_First_Search #Breadth_First_Search #Tree #Binary_Tree
; #Data_Structure_I_Day_12_Tree #Level_2_Day_6_Tree #Udemy_Tree_Stack_Queue
; #Top_Interview_150_Binary_Tree_General #Big_O_Time_O(n)_Space_O(n)
; #2025_02_10_Time_0_ms_(100.00%)_Space_129.49_MB_(100.00%)

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
