load data
infile schedule.csv
into table schedule
fields terminated by ','
(empId,schedId,sDay,startTime,endTime)
