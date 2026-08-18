
def largestInteger(nums, k):
    """
    :type nums: List[int]
    :type k: int
    :rtype: int
    """
    n = len(nums)
    dico = {}
    maxi = -1
    for i in range(n-k+1): # i est aussi le num du ss tab
        for j in range(i, i+k):
            if not (nums[j] in dico):
                dico[nums[j]] = 1
            else:
                if dico[nums[j]] != i+1:
                    dico[nums[j]] += 1
    for key in dico:
        if dico[key] == 1 and key > maxi:
            maxi = key
    return maxi



test = [0,0]
print(largestInteger(test, 2)) #0