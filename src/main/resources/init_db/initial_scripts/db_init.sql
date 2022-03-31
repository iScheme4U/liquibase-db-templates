-- initial scripts
-- execute ddl
select 'executing initial_scripts/ddl/init_ddl.sql' as log from dual;
source initial_scripts/ddl/init_ddl.sql;