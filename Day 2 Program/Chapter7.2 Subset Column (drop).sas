 /*7.2.1  drop statement   */
/*The DROP statement specifies the variables to exclude from the output data set.*/
 data CARS  ;
  set sashelp.cars   ;
    drop  EngineSize	Cylinders	Horsepower	MPG_City	MPG_Highway	Weight	Wheelbase	Length;

 run;   
 
 

 /*7.2.2 set option (drop) at input */
 data CARS;
  set sashelp.cars    (drop = EngineSize	Cylinders	Horsepower	MPG_City	MPG_Highway	Weight	Wheelbase	Length);
/*       if EngineSize>3.5; */
 run; 
 
/*7.2.3 set option (drop) at output */
 data CARS  (drop = EngineSize	Cylinders	Horsepower	MPG_City	MPG_Highway	Weight	Wheelbase	Length);
  set sashelp.cars   ;
 run;   



 /*7.2.4 use proc sql*/
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