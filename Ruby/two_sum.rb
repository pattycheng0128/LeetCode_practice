# def two_sum(nums, target)
#   for first_num in (0..nums.length-1)
#       for second_num in (first_num+1..nums.length-1)
#           if nums[second_num] == target - nums[first_num]
#               return [first_num, second_num]
#           end
#       end
#   end
# end

def two_sum(nums, target)
  hashmap = {}
    for i in (0..nums.length-1)
      current = target - nums[i]
      if hashmap.include?(current)
        return [i, hashmap[current]]
      end
      hashmap[nums[i]] = i
    end
end


p two_sum([2, 7, 11, 15], 9)
p two_sum([3,2,4], 6)
p two_sum([3, 3], 6)