SELECT E.name AS Employee FROM Employee AS E
JOIN Employee AS M ON E.managerID = M.id
WHERE E.salary > M.salary;