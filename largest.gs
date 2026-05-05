function largestFinder(list : List<Integer>) : Integer {
  var largest = list[0]
  for (num in list) {
    if (num > largest) {
      largest = num
    }
  }
  return largest
}

function main(args : String[]) {
  var numberList = {33, 65, 27, 223, 63} as List<Integer>
  var result = largestFinder(numberList)
  print("the largest number is " + result)
}
