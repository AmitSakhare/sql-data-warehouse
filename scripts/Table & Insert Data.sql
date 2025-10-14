/*
========================================================
Create Table and Inserting Data 
========================================================
Script Purpose:
  This script creates a new Tables and inseting Data  
  If the table exists, it is dropped and recreated.

WARNING:
  Running this script will drop the entire 'DataWarehouse' database all tables and schema delete dont drop and truncate .
  All data in the database will be permanently deleted. Proceed with caution and ensure you have proper backups before running this script.
*/


CREATE TABLE bronze.crm_cust_info(
cst_id	INT,
cst_key NVARCHAR(55),
cst_firstname NVARCHAR(50),
cst_lastname NVARCHAR(50),
cst_marital_status NVARCHAR(50),
cst_gndr NVARCHAR(50),
cst_create_date DATE
);

CREATE TABLE bronze.crm_prd_info(
prd_id INT,
prd_key NVARCHAR(50),
prd_nm NVARCHAR(50),
prd_cost INT,
prd_line NVARCHAR(50),
prd_start_dt DATETIME,
prd_end_dt DATETIME
);

CREATE TABLE bronze.crm_sales_details(
	sls_ord_num NVARCHAR(50),
	sls_prd_key NVARCHAR(50),
	sls_cust_id INT,
	sls_order_dt INT,
	sls_ship_dt INT,
	sls_due_dt INT,
	sls_sales INT,
	sls_quantity INT,
	sls_price INT
);
