select distinct book.name as Title ,book.ID
from BUY , book ,READER_BUYER as r
where book.ID=buy.ID or book.ID!=buy.ID and r.R_ID=buy.R_ID 
except 
select distinct book.name ,book.ID
from BUY , book ,READER_BUYER as r
where book.ID=buy.ID and r.R_ID=buy.R_ID and 
(BUY.BUY_DATE between '2022-05-1 00:00:00.000' and '2022-05-30 00:00:00.000') 