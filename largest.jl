function largest_finder(list::Vector{Int})
    largest = list[1]
    for num in list
        if num > largest
            largest = num
        end
    end
    return largest
end

function main()
    number_list = [33, 65, 27, 223, 63]
    result = largest_finder(number_list)
    println("the largest number is $result")
end

main()
