
Select score ,
Dense_rank() over (order by score Desc) as `rank`
from Scores
order by 2;