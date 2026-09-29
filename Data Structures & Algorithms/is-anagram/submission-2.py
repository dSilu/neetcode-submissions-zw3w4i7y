class Solution:
    def count_(self, val) -> dict:
        counts = {}
        for ch in val:
            counts[ch] = counts.get(ch, 0) + 1
        
        return counts

    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) != len(t):
            return False
        
        if self.count_(s) != self.count_(t):
            return False
        
        return True
