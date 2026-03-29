class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if self.getHash(s) == self.getHash(t):
            return True
        else:
            return False
    

    def getHash(self, l: str) -> dict:
        hash_tbl = {}
        for i in l:
            hash_tbl[i] = hash_tbl.get(i, 0)+1
        return hash_tbl
        