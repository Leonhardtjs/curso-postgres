select
    first_name,
    last_name,
    followers
from
    users
where
--     followers >= 4600
--     AND followers <= 4700
followers between 4600 AND 4700
order by
    followers DESC;