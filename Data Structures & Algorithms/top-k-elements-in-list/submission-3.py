class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:

        d = {}

        n = 0

        while n < len(nums):
            x = nums[n]
            if x not in d:
                d[x] = []
            d[x].append(1)
            n+= 1
    
        return sorted(d.keys(), key=lambda key: len(d[key]), reverse=True)[:k]