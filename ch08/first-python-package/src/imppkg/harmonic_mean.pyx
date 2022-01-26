def harmonic_mean(nums):
    """https://en.wikipedia.org/wiki/Harmonic_mean"""
    return len(nums) / sum(1 / num for num in nums)
