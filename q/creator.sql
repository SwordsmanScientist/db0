create table cars
(
VIN int not null,
sYear int,
make varchar(15),
model varchar(15),
primColor varchar(9),
secondColor varchar(9),
doors int not null,
--Performance
acceleration decimal(3,1),
topSpeed int,
mpgHi decimal(3,1),
mpgCity decimal(3,1),
--Specs
transmission char,
numGears int,
powerOutput int,
torque int,
cylinders varchar(10),
--size
weight int,
sLength decimal(4,1),
--store
storeNum int,
PRIMARY KEY (VIN)
);

create table store
(
hours varchar(20),
street varchar(30),
city varchar(30),
sState varchar(13),
zip int,
storeNum int not null,
PRIMARY KEY (storeNum)
);

create table employees
(
--name
fname varchar(18) not null,
mname varchar(15),
lname varchar(20) not null,
--etc
pay decimal(4,2),
position varchar(20),
workId int not null,
storeNum int,
PRIMARY KEY (workId)
);

create table customers
(
representative int, --employee's work id
phoneNum varchar(25) not null,
email varchar(35),
street varchar(30),
sState varchar(15),
--name
fname varchar(15) not null,
mname varchar(15),
lname varchar(15) not null,
primary key (phoneNum)
);

create table schedule
(
empId int not null,
schedId date not null,
sDay varchar(10),
startTime varchar(10),
endTime varchar(10),
PRIMARY KEY (empId, schedId)
);

create table manages
(
managerId int not null,
employeeId int not null,
PRIMARY KEY (managerId,employeeId)
);


