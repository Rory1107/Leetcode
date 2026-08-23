SELECT W.id FROM Weather AS W
LEFT JOIN Weather AS W2 ON (W.recordDate) - INTERVAL '1' DAY = W2.recordDate 
WHERE W.temperature  > W2.temperature
;