def bad_two_sum?(arr, target)
    # n^2
    i = 0
    while i < arr.length - 1
        j = i+1
        while j < arr.length
            return true if arr[i]+arr[j] == target
            j+=1
        end
        i+=1
    end
    false
end

def okay_two_sum?(arr,target)
    sorted = arr.sort 
    i = 0
    j = arr.length - 1 
    while i < j
        return true if arr[i] + arr[j] == target
        if arr[i] + arr[j] < target
            i += 1
        else
            j -= 1
        end
    end
    false
end

def two_sum?(arr,target)
    count = Hash.new(0)
    arr.each do |el|
        count[el]+=1
    end
    count.keys.each do |key|
        pair = target - key
        return true if count.has_key?(pair) && pair != key
        return true if pair == key && count[pair] > 1
    end
    false
end
arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false
