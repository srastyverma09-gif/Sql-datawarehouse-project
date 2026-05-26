/*
In this script, I created the database ‘DataWarehouse’ after first checking whether it already exists.
I have also created the Schemas here.*/


use master

--Check if database 'DataWarehouse' exists
If exists (select 1 from sys.databases where name='Datawarehouse')
begin
print 'exists'
end
else 
begin 
print 'does not exist'
end

--Create DAtabase
 Create database DataWarehouse

 use datawarehouse
 --Create schemas
 Create schema Bronze;
 go
 Create schema Silver;
 go
 Create schema Gold;
 go

