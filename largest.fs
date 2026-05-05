: largest-finder ( -- n )
  33 65 MAX 27 MAX 223 MAX 63 MAX
;

: main ( -- )
  ." the largest number is " largest-finder . CR
;

main
