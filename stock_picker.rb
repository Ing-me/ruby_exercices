def stock_picker(arr)
       
    # Check the length of the array
    if (arr.length < 2)
        puts ("The array should contain at least 2 elements")
    end

    arr_range = ((0...arr.length).to_a)
    permuted_array = arr_range.repeated_permutation(2)
    .select { |start, finish| finish > start}
    .max_by { |start, finish|  arr[finish] - arr[start]}

   

end

array = [17,3,6,9,15,8,6,1,10]
p stock_picker(array)