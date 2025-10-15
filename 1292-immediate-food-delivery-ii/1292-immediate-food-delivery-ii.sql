select round(sum(if(d1.order_date=d1.customer_pref_delivery_date,1,0))/count(*)*100,2) as immediate_percentage
from delivery d1
left join delivery d2
on d1.customer_id=d2.customer_id
and d2.order_date<d1.order_date
where d2.order_date is NULL;