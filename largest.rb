def largest_finder(list)
  largest = list[0]
  list.each do |num|
    if num > largest
      largest = num
    end
  end
  largest
end

def main
  number_list = [33, 65, 27, 223, 63]
  result = largest_finder(number_list)
  puts "the largest number is #{result}"
end

main
