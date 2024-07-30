SELECT email, 'bokegop.id' AS domain FROM users;

SELECT
    count(*),
    SUBSTRING(email, POSITION('@' IN email) + 1) AS domain
FROM
    users
group by
    SUBSTRING(email, POSITION('@' IN email) + 1)
having
    count(*) > 1 order by SUBSTRING(email, POSITION('@' IN email) + 1) ASC;