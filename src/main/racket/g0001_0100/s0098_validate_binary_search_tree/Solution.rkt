; #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Depth_First_Search #Tree #Binary_Tree
; #Binary_Search_Tree #Data_Structure_I_Day_14_Tree #Level_1_Day_8_Binary_Search_Tree
; #Udemy_Tree_Stack_Queue #Top_Interview_150_Binary_Search_Tree #Big_O_Time_O(N)_Space_O(log(N))
; #2025_02_04_Time_0_(100.00%)_Space_101.52_(100.00%)

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

(define/contract (is-valid-bst-recur root low high)
    (-> (or/c tree-node? #f) exact-integer? exact-integer? boolean?)
  (if (tree-node? root)
      (let ([v (tree-node-val root)])
      (and (< low v) (> high v) (is-valid-bst-recur (tree-node-left root) low v) (is-valid-bst-recur (tree-node-right root) v high)))
      true))

(define/contract (is-valid-bst root)
  (-> (or/c tree-node? #f) boolean?)
  (is-valid-bst-recur root (- (-(expt 2 31)) 5) (expt 2 31)))
