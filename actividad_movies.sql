select * from movies;
select first_name,last_name,rating from actors;
select title from series
select title,rating,length from movies;
select first_name,last_name from actors where rating >7.5;
select title,rating,awards from movies where rating >7.5 AND awards> 2;
select title , rating from movies order by rating  ;
select first_name,last_name, rating from actors  where rating BETWEEN 4 and 10;
select title , release_date, length from movies where length> 150;
select title,rating from movies where title like 'toy story';
select first_name, last_name from actors where first_name like'%Sam'
select first_name,last_name from actors order by rating DESC;
select first_name,last_name from actors WHERE first_name like'%a' or LAST_name like '%a';
select title from movies where release_date between '2004-01-01' and '2008-12-31'






