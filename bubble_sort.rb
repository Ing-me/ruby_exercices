require 'pry-byebug'
def bubble_sort(arr)
   
   arr_length = (arr.length).to_i
   i = 0
   temp = 0
    swapped = false
   while i < arr_length do
        (arr_length - 1).times do |num|
            if (arr[num] > arr[num + 1])
               temp = arr[num + 1]
               arr[num + 1] = arr[num]
               arr[num] = temp
                swapped = true
            end
        end
        i += 1
        break if  !swapped
    end
    return arr

         
end

p bubble_sort([4,3,78,2,0,2])