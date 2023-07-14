select a.a_id,a.a_name
from author as a, book as b ,UPLOADED_BY as u 
where a.A_ID=u.A_ID and b.ID=u.ID 
group by a.a_id,a.a_name 
having sum(NUMBER_OF_UPLOADS) is null
