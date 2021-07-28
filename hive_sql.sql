show databases;
use movie;
create table answer2 as
select a.moviename as moviename,count(a.moviename) as total
from t_movie a join t_rating b on a.movieid=b.movieid
group by a.moviename
order by total desc
limit 10;

select * from answer2;