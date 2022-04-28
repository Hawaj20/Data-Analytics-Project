SELECT * FROM sql_inventory.`healthcare data set`;

-- 1 Write a query to filter for countries that have a life expectancy>= 75 
SELECT * FROM sql_inventory.`healthcare data set`;
SELECT `Life expectancy` , `country`
FROM sql_inventory.`healthcare data set`
WHERE `Life expectancy`>=75;

-- 2 Write a query To display average polio cases for 2015 in each country.
SELECT * FROM sql_inventory.`healthcare data set`;
select country, avg(polio) 
from sql_inventory.`healthcare data set`
where year=2015
group by country;

-- 3 Write a Query to calculate total under-five year deaths in country that have a GDP more than 3000 and show result in ascending order
select * from sql_inventory.`healthcare data set`;
select sum(`under-five deaths`) , `country`,`year`
from sql_inventory.`healthcare data set`
group by Country
having sum(`GDP`)>3000
order by sum(`under-five deaths`) asc;

-- 4 Write a Query to show  each country that has a total infant death greater than 5000 and also show number of measles cases in these countries.
select * from sql_inventory.`healthcare data set`;
select `country`,sum(`infant deaths`) , count(`Measles`)
from sql_inventory.`healthcare data set`
group by `country`
having sum(`infant deaths`)>5000
order by sum(`infant deaths`) asc ;

-- 5  Show country and population with average Hepatitis B cases which are greater than, equal to or under 70 using CASE WHEN in query for each country.
select * from sql_inventory.`healthcare data set`;
select country,population,
CASE
WHEN avg(`Hepatitis B`) > 70 THEN 'Hepatitis B cases which are greater then 70 and population >30000000'
WHEN avg(`Hepatitis B`) = 70 THEN 'Hepatitis B cases which are greater 70 and population >30000000'
else 'Hepatitis B cases which are under 70 and population >30000000'
END 
from sql_inventory.`healthcare data set`
group by country;



