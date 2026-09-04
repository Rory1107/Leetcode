UPDATE Salary AS S
SET S.sex = IF(S.sex = 'm', 'f', 'm')
;