select * from oscars;
select * from wiki;
select * from country_api;

-- Joining the above 3 tables to display the income level for each award winner's country.
select o.country,o.movie,o.yearofaward,o.award,w.code,c.incomelevel
from oscars as o
left join wiki as w on o.country = w.country
left join country_api as c on w.code = c.code
order by yearofaward desc;

-- Canary islands does not have any incomelevel.
select o.country,o.movie,o.yearofaward,o.award,w.code,c.incomelevel
from oscars as o
left join wiki as w on o.country = w.country
left join country_api as c on w.code = c.code
where c.incomelevel is null
order by yearofaward desc;

-- Grouping the award winners based on their country's incomelevel.
select c.incomelevel, count(*)
from oscars as o
left join wiki as w on o.country = w.country
left join country_api as c on w.code = c.code
group by c.incomelevel;