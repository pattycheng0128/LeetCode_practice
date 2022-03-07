def single_number(nums)
  # 解法1:
  # no_duplicate_list = []
  # nums.each do |num|
  #   if not no_duplicate_list.include?(num)
  #     no_duplicate_list.push(num)
  #   else
  #     no_duplicate_list.delete(num)
  #   end
  # end
  # return no_duplicate_list.pop()
  
  # 公式: 2∗(a+b+c)−(a+a+b+b+c)=c
  
  # 2 * nums.uniq.sum - nums.sum
  # 解法4:
  a = 0
  nums.each do |num|
    a ^= num
  end
  return a
end

p single_number([2,2,1])
p single_number([4,1,2,1,2])
p single_number([1])