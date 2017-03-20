

# arr = [42, 89, 23, 1]

# def search_array(a,i)
#    counter = 0 
#    r = a.each {|x| counter +=1 
#     if x == i 
#       p counter-1
#     end 
#     if counter  >= a.length  
#       p nil 
#     end 
#    }
# end

# # p search_array(arr, 1)
# # p search_array(arr, 24)

 
# def fib(x)
#  counter =  2 
#  fibonacci_array = [0,1]
#  until counter == x 
#   fibonacci_array[counter]= fibonacci_array[counter-1]+ fibonacci_array[counter-2] 
#   counter +=1
#  end
#  p fibonacci_array
# end

#  fib(6)
#  fib(100)


PARTNER AND I FINSIHED THIS SECTION SEPERATELY. 

# I thought this was insertion sort. Then realized it was something totally different as I did not sort in-place. Now I'm out of time for the week and wondering why this sorting algorithm doesnt work. Can someone help with that?

# start with given array and then create empty array, therefore having two arrays 
#   1. Array1 - Given array with values
#   2. Array2 - Empty array
#  From index 0 to last of Array1, take each value one by one 
#  Starting with index 0 in Array2, compare each selected Array1 value 
#  If the Array1 value is less than Array2 value, 
#     insert Array1 value in Array2's value and insert array2 in Array2 value + 1
#  Else compare to next value in same way
#  Repeat until you run out of values, so Array1index > Array1 length
#  Return Array2 


def sort(a)
b = [0]


 a.each {|x| 
  b_index_counter = 0
  def iterator(x) 
    b_int_value = b[b_index_counter]
    if x < b[b_index_counter]
     b[b_index_counter] = x
     b[b_index_counter + 1] = b_int_value
    else b_index_counter += 1
    iterator(x)
    end
  end
 }

 b.delete_at(b.find_index(0))
#this is to remove the original '0' in array b, as I thought the empty array b's nil would trip up program

end

z = [9, 2, 8, 3, 7, 4, 6, 5, 1, 10]
t = sort(z)
print t

 




















