/*extract eds table */
proc sql; 
 connect to SQLSVR  (DSN="&sas_dsnnm." authdomain="&sas_authnm.");

create table &TBL_OUTPUT as 
 select * from connection to sqlsvr 
(
   select    
   *
  from &tbl_eds
  where &sas_frules
);
quit;