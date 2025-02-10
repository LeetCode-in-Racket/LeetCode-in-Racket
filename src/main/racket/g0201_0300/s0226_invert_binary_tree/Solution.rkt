; #Easy #Top_100_Liked_Questions #Depth_First_Search #Breadth_First_Search #Tree #Binary_Tree
; #Data_Structure_I_Day_12_Tree #Level_2_Day_6_Tree #Udemy_Tree_Stack_Queue
; #Top_Interview_150_Binary_Tree_General #Big_O_Time_O(n)_Space_O(n)
; #2025_02_10_Time_0_(100.00%)_Space_101.20_(100.00%)

; Definition for a binary tree node.
#|
; val : integer?
; left : (or/c tree-node? #f)
; right : (or/c tree-node? #f)
(struct tree-node
  (val left right) #:mutable #:transparent)

; Helper function to create a tree node.
|#
(define (make-tree-node val [left #f] [right #f])
  (tree-node val left right))

; Function to invert a binary tree.
(define/contract (invert-tree root)
  (-> (or/c tree-node? #f) (or/c tree-node? #f))
  (cond
    [(not root) #f] ; Base case: empty tree.
    [else
     (make-tree-node
      (tree-node-val root)                   ; Root value remains the same.
      (invert-tree (tree-node-right root))  ; Invert right subtree and assign to left.
      (invert-tree (tree-node-left root)))])) ; Invert left subtree and assign to right.
