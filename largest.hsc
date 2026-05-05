(global long largest_result 0)

(script static long largest_finder
  (cond
    ((and (> 33 65) (> 33 27) (> 33 223) (> 33 63)) 33)
    ((and (> 65 33) (> 65 27) (> 65 223) (> 65 63)) 65)
    ((and (> 27 33) (> 27 65) (> 27 223) (> 27 63)) 27)
    ((and (> 223 33) (> 223 65) (> 223 27) (> 223 63)) 223)
    (true 63)
  )
)

(script startup main
  (set largest_result (largest_finder))
  (print "the largest number is ")
  (inspect largest_result)
)
