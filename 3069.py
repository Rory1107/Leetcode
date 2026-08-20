class Solution(object):
    def resultArray(self, nums):
        """
        :type nums: List[int]
        :rtype: List[int]
        """
        n = len(nums)
        arr1 = [nums[0]]
        arr2 = [nums[1]]
        d1 = nums[0]
        d2 = nums[1]
        for i in range(2,n):
            if d1 > d2:
                arr1.append(nums[i])
                d1 = nums[i]
            else:
                d2 = nums[i]
                arr2.append(d2)
        return arr1 + arr2