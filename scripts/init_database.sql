/*
==============================================================
Create Database and Schemas
==============================================================
Script Purpose:
	This script ceates a new database named 'DataWarehouse' after checking if it already exists. 
	If the database exists, it is dropped and recreated. Additionally, the script ses up three schemas
	witin the database: 'bronze', 'silver', and 'gold'.

Warning: 
	Running the script will drp the entire 'DataWarehouse' database if it exists.
	All data in the database will be permanently deleted. Proceed with caution and 
	ensure you have proper backups before running the script.
*/


USE master;
GO

--Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
	END;

GO

--Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;

GO

USE DataWareHouse;
GO

--Create Schemas
CREATE SCHEMA BRONZE;
GO
CREATE SCHEMA SILVER;
GO
CREATE SCHEMA GOLD;
GO
