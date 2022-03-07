# ex1: Time complexity : O(n^2), space complexity:O(n) 
def single_number(nums):
    new_array = []
    for num in nums:
      if num not in new_array:
        new_array.append(num)
      else:
        new_array.remove(num)
    return new_array.pop()

# ex2: Time complexity: O(n), space complexity: O(n)
# 2 * (a+b+c) - (a+a+b+b+c) = c
# def single_number(nums):
#   return 2 * sum(set(nums)) - sum(nums)

# ex3
def single_number(nums):
  a = 0
  for i in nums:
    a = a ^ i
  return a

print(single_number([1,3,3]))
print(single_number([4,1,2,1,2]))
print(single_number([1]))
