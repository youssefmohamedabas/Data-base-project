SELECT top 2 book_copies.copy_ID ,BOOK_COPIES.TITLE_
    ,  count(buy.r_id) as Total_buyers
  FROM buy inner join book_copies
  on buy.copy_ID=book_copies.copy_ID
 group by book_copies.copy_ID,BOOK_COPIES.TITLE_
 ORDER BY Total_buyers desc
