def checkDivisibility(n):
        """
        :type n: int
        :rtype: bool
        """
        m1 = 0
        m2 = 1
        convert = str(n)
        n_digits = len(convert)
        for i in range(n_digits):
            m1 += int(convert[i])
            m2 *= int(convert[i])
        s = m1 + m2
        test = n % s == 0
        return test