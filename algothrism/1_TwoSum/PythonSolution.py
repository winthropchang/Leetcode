# -*- coding=utf8 -*-
def twoSum(nums, target):
    deviations = {}
    idx = 0
    for i in nums:
        diff = target - i
        if diff in deviations:
            return [deviations[diff], idx]
        deviations[i] = idx
        idx = idx + 1

if __name__ == "__main__":
    nums = [2,7,11,15]
    target = 9
    solution = twoSum(nums, target)
    print(solution)