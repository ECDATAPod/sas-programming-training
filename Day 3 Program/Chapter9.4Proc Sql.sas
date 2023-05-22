
/*9.3.1 limit record to in*/

proc sql inobs=1; 
 select * from SASHELP.CARS;
 quit;
 

/*9.3.2 limit record to output*/

proc sql outobs=12; 
 select * from SASHELP.CARS;
 quit;
 
  
/*9.3.3 calculated field */

proc sql  ; 
create table dq as
 select (MSRP-Invoice) as ttl_amt from SASHELP.CARS
 where calculated ttl_amt <1000;
 quit;
 
/*9.3.4 assign macro variable*/
proc sql;
 select count(*)  as count , max(msrp) 
 into :macrovar1 , :macrovar2 TRIMMED
 from sashelp.cars;
 quit; 
 
 %put &=macrvar1 is the record count and &=macrovar2 is the max;
 