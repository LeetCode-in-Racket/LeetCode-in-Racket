; #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Dynamic_Programming
; #Dynamic_Programming_I_Day_6 #Level_2_Day_13_Dynamic_Programming #Udemy_Dynamic_Programming
; #Big_O_Time_O(N)_Space_O(1) #2025_02_08_Time_731_(100.00%)_Space_102.15_(_%)

(define/contract (find-min nums)
  (-> (listof exact-integer?) exact-integer?)
  (letrec
      ([find-min-util
        (lambda (nums l r)
          (if (= l r)
              (list-ref nums l)
              (let* ([mid (quotient (+ l r) 2)]
                     [mid-val (list-ref nums mid)]
                     [left-val (if (> mid 0) (list-ref nums (- mid 1)) +inf.0)]
                     [right-val (list-ref nums r)])
                (cond
                  [(and (= mid l) (< mid-val right-val)) (list-ref nums l)]
                  [(and (>= (- mid 1) 0) (> left-val mid-val)) mid-val]
                  [(< mid-val (list-ref nums l)) (find-min-util nums l (- mid 1))]
                  [(> mid-val right-val) (find-min-util nums (+ mid 1) r)]
                  [else (find-min-util nums l (- mid 1))]))))])
    (find-min-util nums 0 (- (length nums) 1))))
