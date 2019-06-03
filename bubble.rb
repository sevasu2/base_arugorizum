# 単純交換法（バブルソート）

# array = [5,3,4,1,2]
# i = array.length
# k = 0

# while k < 4
#   while i > k
#     if array[i-1] < array[i]
#       w = array[i]
#     else
#       w = array[i -1]
#       array[i-1] = array[i]
#       w = array[i]
#     end
#     　i = i -1
#   else
#     k = k + 1
#   end
# end

def bubbleSort(numbers)

  while true do

    flg = 0

    (numbers.count-1).times do |i|
      num1 = numbers[i]
      num2 = numbers[i+1]
      if num1 > num2 then
        numbers[i]   = num2
        numbers[i+1] = num1
        flg += 1
      end

    end

    if flg == 0 then
      break
    end

  end

  numbers
end

puts bubbleSort([2,12,7,16,8,13])
