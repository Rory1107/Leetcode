class Solution(object):
    def longestSubsequence(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        n = len(nums)
    
        xor_total = 0
        for x in nums:
            xor_total ^= x
        
        if xor_total != 0:
            return n
        
        
        for x in nums:
            if x != 0:
                return n - 1 #xor est son propre inverse
        
        return 0