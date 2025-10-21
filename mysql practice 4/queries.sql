-- Section1
select name
from athletes
where nationality = 'Islamic Republic of Iran'
order by name asc
;
-- Section2

select discipline , nationality , COUNT(*) from athletes
group by discipline,nationality
order by count(*) desc ;

-- Section3

select nationality , COUNT(*) from athletes
group by nationality
order by count(*) desc