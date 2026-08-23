class Solution(object):
    def sumGame(self, num):
        n = len(num)
        mid = n // 2
        
        left_sum = right_sum = 0
        left_q = right_q = 0
        
        for i, ch in enumerate(num):
            if ch == '?':
                if i < mid:
                    left_q += 1
                else:
                    right_q += 1
            else:
                if i < mid:
                    left_sum += int(ch)
                else:
                    right_sum += int(ch)
        
        diff = left_sum - right_sum
        
        return diff * 2 != -9 * (left_q - right_q) # Alice gagne