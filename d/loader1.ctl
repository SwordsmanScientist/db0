load data
infile cars.csv
into table cars
fields terminated by ','
(VIN,sYear,make,model,primColor,secondColor,doors,acceleration,topSpeed,mpgHi,mpgCity,transmission,numGears,powerOutput,torque,cylinders,weight,sLength,storeNum)
