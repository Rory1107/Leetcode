class Solution(object):
    def missingMultiple(self, nums, k):
        """
        :type nums: List[int]
        :type k: int
        :rtype: int
        """
        n = len(nums)
        for i in range(1,n+1):
            a = k * i
            if not a in nums:
                return a
        return k*(n+1)
        