 select Max(num) as num
 from MyNumbers
 where num in
 (select num
 from MyNumbers
 group by num
 having count(num)=1);