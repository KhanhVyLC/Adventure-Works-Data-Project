CREATE MASTER KEY ENCRYPTION BY PASSWORD = '';

CREATE DATABASE SCOPED CREDENTIAL cred_ansh
WITH 
IDENTITY = 'Managed Identity'


CREATE EXTERNAL DATA SOURCE source_silver
WITH 
(
LOCATION = 'https://awstoragedtl.blob.core.windows.net/silver',
CREDENTIAL = cred_ansh
)


CREATE EXTERNAL DATA SOURCE source_gold
WITH 
(
LOCATION = 'https://awstoragedtl.blob.core.windows.net/gold',
CREDENTIAL = cred_ansh
)


CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
FORMAT_TYPE = PARQUET,
DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)


---------------------------------------------
-------CREATE EXTERNAL TABLE EXTRASALES
---------------------------------------------
CREATE EXTERNAL TABLE gold.extrasales
WITH
(
LOCATION = 'extrasales',
DATA_SOURCE = source_gold,
FILE_FORMAT = format_parquet
) 
AS
SELECT * FROM gold.sales


SELECT * FROM gold.extrasales


