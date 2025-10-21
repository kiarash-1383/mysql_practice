-- Section1
    select country , sum(new_cases) as total_cases, sum(new_deaths) as total_deaths from covid
group by country
order by total_deaths desc 

-- Section2
select total_cases , total_deaths from (select country , sum(new_cases) as total_cases, sum(new_deaths) as total_deaths from covid
group by country
order by total_deaths desc ) as covid_new
where country = 'Iran (Islamic Republic of)'
-- Section3
   select country , rank() over (order by total_deaths desc ) as rankk
from (select country , sum(new_cases) as total_cases, sum(new_deaths) as total_deaths from covid
group by country) as lor
-- Section4
   select rankk from ( select country, rank() over (order by total_deaths desc ) as rankk
from (select country , sum(new_cases) as total_cases, sum(new_deaths) as total_deaths from covid
group by country) as lor) as koon
where country = 'Iran (Islamic Republic of)'
