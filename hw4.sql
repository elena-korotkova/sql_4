select MARK as 'марка',COLOR as 'цвет',count(*) as 'количество' from 
(select * from AUTO where MARK IN ('BMW','LADA')) as sub
group by MARK,COLOR;


select MARK as 'марка',count(*) as 'Количество машин марки', ((select count(*) from AUTO) - count(*)) as 'Количество других авто' 
from 
(select MARK from AUTO) as q1
group by MARK;


select test_a.* from test_a
right join test_b on test_a.id=test_b.id;