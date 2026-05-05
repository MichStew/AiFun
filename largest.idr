module Main

largestFinder : List Int -> Int
largestFinder (x :: xs) = foldl max x xs
largestFinder [] = 0  -- fallback, not used in this case

main : IO ()
main = do
  let numberList = [33, 65, 27, 223, 63]
  let result = largestFinder numberList
  putStrLn ("the largest number is " ++ show result)
