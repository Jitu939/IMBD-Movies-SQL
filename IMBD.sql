select * from movies;
select * from directors;
SELECT COUNT(original_title) as Total_movies FROM movies;
select * from directors where name in ('James Cameron','Luc Besson','John Woo');
select * from directors where name like 'S%';
SELECT COUNT(gender) as female_director_count FROM directors where gender = 1;
select name from directors where gender = 1 limit 10; 
select original_title  from movies order by popularity desc limit 3;
SELECT title FROM movies ORDER BY budget DESC LIMIT 3;
SELECT title FROM movies WHERE release_date > "2000-01-01" ORDER BY vote_average DESC LIMIT 1;


create view new_view as select original_title ,budget 
,popularity 
,release_date  
,revenue 
,title  
,vote_average  
,vote_count  
,overview  
,tagline  ,uid  ,director_id  from movies;
show grants;

 select original_title ,budget 
,popularity 
,release_date  
,revenue 
,title  
,vote_average  
,vote_count  
,overview  
,tagline  ,uid  ,director_id  from movies;


SELECT original_title FROM movies JOIN directors ON movies.director_id =directors.id WHERE directors.name="Brenda Chapman";

select m.original_title from movies m join directors d on m.director_id = d.id where d.name = 'Brenda Chapman';

select d.name, count(*) as movie_count from movies m join directors d on m.director_id = d.id group by d.name order by movie_count desc limit 1;

select d.name, sum(m.revenue - m.budget) as total_profit from movies m join directors d on m.director_id =d.id group by d.name order by total_profit desc limit 1;

