def maximumLengthSubstring(s):
        """
        :type s: str
        :rtype: int
        """
        n = len(s)
        debut = 0
        maxi = 0
        dico = {}
        for i in range(n):
            dico[s[i]] = dico.get(s[i], 0) + 1
            while dico[s[i]] > 2:
                dico[s[debut]] -= 1
                debut+=1
            maxi = max(maxi, i - debut + 1)
        return maxi


        

print(maximumLengthSubstring("bcbbbcba"))