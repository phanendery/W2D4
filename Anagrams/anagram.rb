def first_anagram?(str1, str2)

    anagrams = str1.chars.permutation.map(&:join)
    anagrams.include? str2
end


def second_anagram?(str1,str2)
    str1.chars.each do |c|
        index = str2.index(c)
        return false if index.nil?
        str2[index] = ""
    end
    str2.length == 0 
end

def third_anagram?(str1, str2)
    str1.chars.sort == str2.chars.sort
end

def fourth_anagram?(str1,str2)
    count = Hash.new(0)
    str1.chars.each do |c|
        count[c] += 1
    end
    str2.chars.each do |c|
        count[c] -= 1
    end

    count.none? {|k,v| v != 0}
end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true