def my_min(array)
    lowest = array.first
    array.each do |el|
        lowest = el if el < lowest
    end
    lowest
end
def largest_contiguous_subsum(array)
    sub = []
    array.each_with_index do |el, i|
        sub << [el]
        (i+1...array.length).each do |j|
            sub << array[i..j] #O(n) from slicing 0
        end
    end
    sum = sub.first.sum
    sub.each do |el|
        sum = el.sum if el.sum > sum
    end

    sum
end

def faster_contigious_sum(arr)
    ans = 0
    sum = 0
    p "#{ans} #{sum}" 
    arr.each do |el|
        ans = max(0,ans+el)
        sum = max(sum,ans)
        p "#{ans} #{sum} #{el}" 
    end
    p "#{ans} #{sum}" 
    if sum == 0
        return arr.max
    end
    sum
end

def max(a,b)
    return a if a > b
    b
end

list = [5,4,-4,2]
p faster_contigious_sum(list)  