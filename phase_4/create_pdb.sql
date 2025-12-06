CREATE PLUGGABLE DATABASE pharmacy_pdb
ADMIN USER pharmacy_admin IDENTIFIED BY admin123
FILE_NAME_CONVERT = ('pdbseed','pharmacy_pdb');

ALTER PLUGGABLE DATABASE pharmacy_pdb OPEN;

ALTER SESSION SET CONTAINER = pharmacy_pdb;

CREATE TABLESPACE pharmacy_data
DATAFILE 'pharmacy_data.dbf'
SIZE 50M
AUTOEXTEND ON;

CREATE TABLESPACE pharmacy_index
DATAFILE 'pharmacy_index.dbf'
SIZE 20M
AUTOEXTEND ON;

