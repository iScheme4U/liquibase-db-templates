-- create db
select 'executing initial_scripts/ddl/create_db.sql' as log from dual;
source initial_scripts/ddl/create_db.sql;

-- create user
select 'executing initial_scripts/ddl/create_user.sql' as log from dual;
source initial_scripts/ddl/create_user.sql;