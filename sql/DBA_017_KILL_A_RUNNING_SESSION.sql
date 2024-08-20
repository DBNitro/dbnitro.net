-- Author...........: Andre Augusto Ribas"
-- SoftwareVersion..: 1.0.1"
-- DateCreation.....: 20/02/2024
-- DateModification.: 20/02/2024
-- EMAIL_1..........: dba.ribas@gmail.com
-- EMAIL_2..........: andre.ribas@icloud.com
-- WEBSITE..........: http://dbnitro.net

set pages 700 lines 700 timing on long 9999999 numwidth 20 heading on echo on verify on feedback on colsep '|'
prompt ##############################################################
prompt # KILL A RUNNING SESSION
prompt ##############################################################
col MACHINE for a30
col username for a25
col OSUSER for a30
col PROGRAM for a60
col "SID,SERIAL,@INST" for a20
select OSUSER
  , MACHINE
  , SID || ',' || SERIAL# || ',@' || INST_ID as "SID,SERIAL,@INST"
  , USERNAME
  , PROGRAM
from gv$session
where osuser not in ('GRID','grid','ORACLE','oracle')
order by 1,2,3,5;