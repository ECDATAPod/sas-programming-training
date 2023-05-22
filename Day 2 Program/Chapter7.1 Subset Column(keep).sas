 /*7.1.1  keep statement   */
 data CARS  ;
  set sashelp.cars   ;
    keep  Model	Type	Origin	DriveTrain	MSRP	Invoice;
 run;   
 
 

 /*7.1.2 set option (keep) at input */
 data CARS;
  set sashelp.cars    (keep = Model	Type	Origin	DriveTrain	MSRP	Invoice);
 run; 
 
/*7.1.3 set option (keep) at output */
 data CARS  (keep = Model	Type	Origin	DriveTrain	MSRP	Invoice);
  set sashelp.cars   ;
 run;   


 /*7.1.4 use proc sql*/
proc sql; 
create table cars as 
 select  Model
 		,Type
 		,Origin
 		,DriveTrain
 		,MSRP
 		,Invoice
 	from
 	sashelp.cars;
 quit;