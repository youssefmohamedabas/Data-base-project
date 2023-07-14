select  category_name 
from category,book_copies ,include
where category.category_id=include.category_id
and book_copies.copy_id=include.copy_id
group by category_name
order by sum(book_copies.B_NUM_COPIES) asc   


