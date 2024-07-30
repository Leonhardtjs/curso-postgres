select
    count(*) as total_users,
    MIN(followers) as min_followers,
    MAX(followers) as max_followers,
    ROUND(AVG(followers)) as avg_followers,
    SUM(followers) / count(*) as avg_manual
from
    users;

select first_name, last_name, followers from users where followers = 4 or followers = 4999;

select
    count(*), followers
from
    users
where
    followers = 4
    or followers = 4999 group by followers;
    

select
    count(*), followers
from
    users
where
    followers BETWEEN 4500 and 4999  group by followers order by followers DESC;