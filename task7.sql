---create view
	
create view user_info_view as
select customer_id,segment,age,state,postal_code 
from customer
where segment = 'Consumer'

select * from user_info_view

---update view

update user_info_view
set state =  'New York'
where age > 50

select * from user_info_view
	
----alter view

------It is not possible to alter view

alter table user_info_view
add column address varchar;

---delete view

begin

select * from user_info_view

delete from user_info_view
where customer_id in ('TB-21055','DP-13000','JE-15745')

select * from user_info_view