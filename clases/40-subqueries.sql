select
   *
from
    (
        SELECT
            count(*) as total,
            SUBSTRING(email, POSITION('@' IN email) + 1) AS domain,
            'Fernando' as name,
            37 as age
        FROM
            users
        group by
            SUBSTRING(email, POSITION('@' IN email) + 1)
        having
            count(*) > 1
        order by
            SUBSTRING(email, POSITION('@' IN email) + 1) ASC
    ) as email_domains;