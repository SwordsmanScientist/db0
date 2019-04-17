--1
--Find the names of customers who live in the same state as the store
select fname, lname
from customers
where sState = (select sstate from store where storenum = 100);

--2
--Find the employees who make above average at the store
select fname, lname
from employees outer
where pay > (select avg(pay)
		from employees
		where workId = outer.workId);


--3
--Select cars which are are older than the silver toyota corolla on the lot
select *
from cars
where sYear < (select sYear
				from cars
				where primColor = 'silver' and make = 'toyota' and model = 'corolla');
				
--4
--List all customers and salesmen.
select fname, lname
from customers
union
select fname, lname
from employees;

--List customers that spoke to their corresponding salesman.
select customers.representative
from customers
intersect
select employees.workId
from employees;

--List all employees who are not managers.
select *
from employees
minus
select *
from employees
where position != 'salesman';

--5
--List cars that do not have a secondary color.
select *
from cars
where not exists
(select secondColor from cars);

--List cars that do have a secondary color.
select *
from cars
where exists
(select secondColor from cars);

--List all cars which are primarily blue, red, or white.
select *
from cars
where primColor in ('blue','red','white');

--List all cars which are not Chevy or dodge
select *
from cars
where make not in ('chevrolet','dodge');

--List the VIN and model of all the cars if all cars are at store 100.
select VIN, model
from cars
where storeNum = ALL (select storeNum from cars)

--6 	Error here
--Select cars newer than 2000, group them by manufacturer.
select make
from cars
group by make
having (select sYear from cars) > 2000;

--Sort cars by year.
select *
from cars
order by sYear;
