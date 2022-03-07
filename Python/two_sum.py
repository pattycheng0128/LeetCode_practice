# ex1
# current = target - x
# nums[j] == target - nums[i]
# def two_sum(nums, target):
#   for i in range(len(nums)):
#     for j in range(i+1, len(nums)):
#       if nums[j] == target - nums[i]:
#         return [i, j]   

def two_sum(nums, target):
  hashmap = {}
  
  for i in range(len(nums)):
    current = target - nums[i]
    if current in hashmap:
      return [i, hashmap[current]]
    hashmap[nums[i]] = i
  
print(two_sum([2, 7, 11, 15], 9))
print(two_sum([3,2,4], 6))
print(two_sum([3, 3], 6))