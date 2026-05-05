fun largestFinder(list: List<Int>): Int {
    var largest = list[0]
    for (num in list) {
        if (num > largest) {
            largest = num
        }
    }
    return largest
}

fun main() {
    val numberList = listOf(33, 65, 27, 223, 63)
    val result = largestFinder(numberList)
    println("the largest number is $result")
}
