select distinct BOOK_COPIES.TITLE_  ,BOOK_COPIES.COPY_ID
from BUY , BOOK_COPIES ,READER_BUYER as r
where BOOK_COPIES.COPY_ID=buy.COPY_ID or BOOK_COPIES.COPY_ID!=buy.COPY_ID and r.R_ID=buy.R_ID 
except 
select distinct BOOK_COPIES.TITLE_  ,BOOK_COPIES.COPY_ID
from BUY , BOOK_COPIES ,READER_BUYER as r
where BOOK_COPIES.COPY_ID=buy.COPY_ID and r.R_ID=buy.R_ID and 
(BUY.BUY_DATE between '2022-05-1 00:00:00.000' and '2022-05-30 00:00:00.000') 