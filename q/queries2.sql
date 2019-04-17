--1
--The 100 lot just got a 1995 Mitsubishi Eclipse in green. We have the vin (30), and we will insert into the table
insert into cars (vin, sYear, make, model, primColor,doors, storeNum)
values (30, 1995, 'Mitsubishi', 'Eclipse', 'green',2,100);

--2
--Erika Cronin has been fired, so we are removing her from the table
delete from employees where lname = 'Cronin' and fname = 'Erika';

--3
--A customer came and bought all of our Toyota Corollas. We need to remove all of them from the table now.
delete from cars where make = 'Toyota' and model = 'Corolla';

--4
--We looked up the specs on the Eclipse. Now we will update the info.
--Top speed is 146, 0-60 is 9.4 seconds, horsepower is 146, torue is 144, and
--miles per gallon is 32.2 highway and 16.6 city. It is a 5 speed manual transmission with an L4 engine.
--The weight of the car is 2855 lbs, and it is 172 inches long.
update cars
set acceleration = 9.4, topSpeed = 136, powerOutput = 146, torque = 144, mpgHi = 32.2, mpgCity = 16.9,
transmission = 'm', numGears = 5, cylinders = 'L4', weight = 2855, slength = 172
where vin = 30;

--5
--All salesmen just got a $.25 raise. Update the table to reflect this.
update employees
set pay = (pay+.25)
where position = 'salesman';
