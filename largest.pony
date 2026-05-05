actor Main
  new create(env: Env) =>
    let number_list: Array[I32] = [33; 65; 27; 223; 63]
    let result = largest_finder(number_list)
    env.out.print("the largest number is " + result.string())

  fun largest_finder(list: Array[I32]): I32 =>
    var largest: I32 = list(0)?
    for num in list.values() do
      if num > largest then
        largest = num
      end
    end
    largest
