-- 1 ) Простые запросы

select * from chat c;


select * from profile p where p.id like '%5';


-- 2 ) запросы с агрегацией 


select count(id), ChatName  from chat c group by ChatName;


select count(id), p.Name from profile p group by p.Name;



-- 3 ) Джоин

select p.user_id, u.login, p.name , p.status   from profile p inner join  `user` u on p.user_id = u.id ;



select c.admin_id,  u.login, c.ChatName, c.message  from chat c inner join `user` u on c.admin_id = u.id;



-- 4 ) Джоин с подзапросом

select p.user_id , u.login , p.name , p.status  from profile p 
inner join  `user` u on p.user_id = u.id 
where u.login = (select u.login where u.login like '%com');


