select
activity_date As day,
count(Distinct user_id) as active_users
from 
Activity
where
activity_date Between Date_sub('2019-07-27', INTERVAL 29 day)and '2019-07-27'
group By
activity_date;
