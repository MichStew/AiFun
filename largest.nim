proc largestFinder(list: seq[int]): int =
  var largest = list[0]
  for num in list:
    if num > largest:
      largest = num
  result = largest

when isMainModule:
  let numberList = @[33, 65, 27, 223, 63]
  let result = largestFinder(numberList)
  echo "the largest number is ", result
