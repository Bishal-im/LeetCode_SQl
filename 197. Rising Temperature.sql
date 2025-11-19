select w1.id
from Weather as w1
join weather as w2
ON w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
where w1.temperature> w2.temperature;  

-- another you can do is 

SELECT id
FROM Weather w1
WHERE temperature >
(
  SELECT w2.temperature
  FROM Weather w2
  WHERE w2.recordDate = DATE_SUB(w1.recordDate, INTERVAL 1 DAY)
);
