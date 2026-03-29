class Solution:
    def hasDuplicate(self, nums: List[int]) -> bool:
        output = False
        hash_tbl = {}
        for i in nums:
            hash_tbl[i] = hash_tbl.get(i, 0) + 1

        for i in hash_tbl.values():
            if i > 1:
                output = True
                break
        
        return output