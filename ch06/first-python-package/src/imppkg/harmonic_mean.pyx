def harmonic_mean(nums):
    return len(nums) / sum(1 / num for num in nums)
