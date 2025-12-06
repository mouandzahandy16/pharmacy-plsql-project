CREATE TABLESPACE pharmacy_data
DATAFILE 'pharmacy_data.dbf'
SIZE 50M
AUTOEXTEND ON;

CREATE TABLESPACE pharmacy_index
DATAFILE 'pharmacy_index.dbf'
SIZE 20M
AUTOEXTEND ON;

CREATE USER pharmacy_user
IDENTIFIED BY pharmacy123
DEFAULT TABLESPACE pharmacy_data
TEMPORARY TABLESPACE temp
QUOTA UNLIMITED ON pharmacy_data;

GRANT CONNECT, RESOURCE TO pharmacy_user;
GRANT CREATE TABLE TO pharmacy_user;
GRANT CREATE SEQUENCE TO pharmacy_user;
GRANT CREATE VIEW TO pharmacy_user;
GRANT CREATE PROCEDURE TO pharmacy_user;
GRANT CREATE TRIGGER TO pharmacy_user;





CREATE TABLESPACE pharmacy_data
DATAFILE 'pharmacy_data2.dbf'
SIZE 50M
AUTOEXTEND ON;

SELECT tablespace_name 
FROM dba_tablespaces 
WHERE tablespace_name IN ('PHARMACY_DATA','PHARMACY_INDEX');

SELECT tablespace_name 
FROM dba_tablespaces 
WHERE tablespace_name = 'PHARMACY_INDEX';


CREATE TABLESPACE pharmacy_index
DATAFILE 'pharmacy_index2.dbf'
SIZE 20M
AUTOEXTEND ON;