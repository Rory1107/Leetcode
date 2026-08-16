class Solution(object):
    def __init__(self):
        self.cache = {}
    def can_alice_win(self, S, c0, c1, c2, turn):
        # S est la somme actuelle modulo 3 (1 ou 2)
        # turn est True pour Alice, False pour Bob
        
        key = (S,c0,c1,c2,turn)
        if key in self.cache:
            return self.cache[key]


        # Si plus de pierres Bob gagne
        if c1 == c2 == 0:
            self.cache[key] = False
            return False  # Alice ne gagne pas

        if S == 0:
            # Premier coup Alice peut prendre n'importe quelle pierre
            if c0 > 0:
                if self.can_alice_win(0, c0-1, c1, c2, not turn):
                    self.cache[key] = True
                    return True
            if c1 > 0:
                if self.can_alice_win(1, c0, c1-1, c2, not turn):
                    self.cache[key] = True
                    return True
            if c2 > 0:
                if self.can_alice_win(2, c0, c1, c2-1, not turn):
                    self.cache[key] = True
                    return True
            return False
        



        elif S == 1:
            if c1 > 0:
                self.cache[key] = self.can_alice_win(S+1, c0, c1-1, c2, not turn)
                return self.cache[key]
            if c0 > 0:
                self.cache[key] = self.can_alice_win(S, c0-1, c1, c2, not turn)
                return self.cache[key]
            if c1 == c0 == 0:
                return not turn
        else: # S == 2
            if c2 > 0:
                self.cache[key] = self.can_alice_win(1, c0, c1, c2-1, not turn)
                return self.cache[key]
            if c0 > 0:
                self.cache[key] = self.can_alice_win(S, c0-1, c1, c2, not turn)
                return self.cache[key]
            if c2==c0==0:
                return not turn

    def stoneGameIX(self, stones):
        """
        :type stones: List[int]
        :rtype: bool
        """
        count = [0, 0, 0]
        for x in stones:
            count[x % 3] += 1
        return self.can_alice_win(0,count[0], count[1], count[2], True)

        