-- initial scripts
select 'executing initial_scripts/db_init.sql' as log from dual;
source initial_scripts/db_init.sql;