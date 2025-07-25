; #Easy #Top_100_Liked_Questions #Top_Interview_Questions #Depth_First_Search #Breadth_First_Search
; #Tree #Binary_Tree #LeetCode_75_Binary_Tree/DFS #Data_Structure_I_Day_11_Tree
; #Programming_Skills_I_Day_10_Linked_List_and_Tree #Udemy_Tree_Stack_Queue
; #Top_Interview_150_Binary_Tree_General #Big_O_Time_O(N)_Space_O(H)
; #2025_02_05_Time_0_ms_(100.00%)_Space_101.36_MB_(100.00%)

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

(define/contract (max-depth root)
  (-> (or/c tree-node? #f) exact-integer?)
  (if root
    (+ 1 
        (max
            (max-depth (tree-node-left root))
            (max-depth (tree-node-right root))))
    0))
