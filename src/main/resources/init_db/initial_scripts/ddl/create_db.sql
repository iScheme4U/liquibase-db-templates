select 'executing drop database' as log from dual;
DROP DATABASE IF EXISTS `liquibase_test`;

-- Create the new database
select 'executing create database' as log from dual;
CREATE DATABASE `liquibase_test` DEFAULT CHARACTER SET utf8mb4;