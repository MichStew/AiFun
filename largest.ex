defmodule LargestFinder do
  def largest_finder([head | tail]) do
    Enum.reduce(tail, head, fn num, largest ->
      if num > largest do
        num
      else
        largest
      end
    end)
  end
end

defmodule Main do
  def main do
    number_list = [33, 65, 27, 223, 63]
    result = LargestFinder.largest_finder(number_list)
    IO.puts("the largest number is #{result}")
  end
end

Main.main()
