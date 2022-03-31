select 'executing drop user liquibase' as log from dual;
drop user 'liquibase'@'%';

-- Creates the user
select 'executing create user liquibase' as log from dual;
create user 'liquibase'@'%' identified by 'liquibase';

-- Gives all the privileges to the new user on the
select 'executing grant privilege' as log from dual;
grant all on liquibase_test.* to 'liquibase'@'%';