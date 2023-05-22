 /*7.3.1  where statement 1  */
 data CARS  ;
  set sashelp.cars   ;
    drop  EngineSize	Cylinders	Horsepower	MPG_City	MPG_Highway	Weight	Wheelbase	Length;
    where enginesize > 3.5;
 run;   

 /*7.3.2  where option  1 */
 data CARS  ;
  set sashelp.cars (where=(enginesize > 3.5))  ;
    drop  EngineSize	Cylinders	Horsepower	MPG_City	MPG_Highway	Weight	Wheelbase	Length;
  ;
 run;   
 
 
 
 /*7.3.3  where statement 2  */
 data CARS;
  set sashelp.cars    (drop = EngineSize	Cylinders	Horsepower	MPG_City	MPG_Highway	Weight	Wheelbase	Length);
      where EngineSize>3.5;
 run; 
 
 
  

  /*7.3.4  where option  2 */
 data CARS;
  set sashelp.cars    ( where=(enginesize > 3.5) drop = EngineSize	Cylinders	Horsepower	MPG_City	MPG_Highway	Weight	Wheelbase	Length);
      where EngineSize>3.5;
 run; 
 
 
 /*7.3.5  where statement 3  */
 data CARS  (drop = EngineSize	Cylinders	Horsepower	MPG_City	MPG_Highway	Weight	Wheelbase	Length);
  set sashelp.cars    ;
    where EngineSize>3.5;
 run;   

  /*7.3.6  where option  3 */ 
  data CARS  (drop = EngineSize	Cylinders	Horsepower	MPG_City	MPG_Highway	Weight	Wheelbase	Length);
  set sashelp.cars   (where=(enginesize> 3.5) ) ;
    
 run;   


 /*7.3.7 use proc sql*/
proc sql; 
create table cars as 
 select  Model
 		,Type
 		,Origin
 		,DriveTrain
 		,MSRP
 		,Invoice
 	from
 	sashelp.cars
 	where enginesize >3.5;
 quit;