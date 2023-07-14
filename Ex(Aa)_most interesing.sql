SELECT top 3 book.ID,BOOK.NAME as Title,
      count(*) as Total_buyers
  FROM buy inner join BOOK
  on buy.id=book.id
 group by buy.id,book.id,BOOK.NAME
 ORDER BY Total_buyers desc
