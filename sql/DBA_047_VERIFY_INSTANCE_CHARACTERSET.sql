-- Author...........: Andre Augusto Ribas"
-- SoftwareVersion..: 1.0.1"
-- DateCreation.....: 20/02/2024
-- DateModification.: 20/02/2024
-- EMAIL_1..........: dba.ribas@gmail.com
-- EMAIL_2..........: andre.ribas@icloud.com
-- WEBSITE..........: http://dbnitro.net

set pages 700 lines 700 timing on long 9999999 numwidth 20 heading on echo on verify on feedback on colsep '|'
prompt ##############################################################
prompt # VERIFY INSTANCE CHARACTERSET
prompt ##############################################################
col parameter for a50
col value for a50
select * from nls_database_parameters;