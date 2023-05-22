 data CARS_ASIA   CARS_EUROPE CARS_USA CAR_OTHER ;
   set sashelp.cars   ;
	   
	  if UPCASE(origin)  = 'ASIA' then output   CARS_ASIA;
	   else  if UPCASE(origin)  = 'EUROPE' then output   CARS_EUROPE;
	   else  if UPCASE(origin)  = 'USA' then output   CARS_USA;
	   else output CAR_OTHER; 
RUN; 

 /*7.4.1  use the new variable in the where statement  */
 data CARS  ;
  set sashelp.cars   ;
     /*checking_amout*/
    checking_amout  = MSRP- Invoice;
    
    drop  EngineSize	Cylinders	Horsepower	MPG_City	MPG_Highway	Weight	Wheelbase	Length;
    where enginesize > 3.5 and     checking_amout lt 0;
 run;   

 
 
  /*7.3.1  use the if statement   */
 data CARS  ;
  set sashelp.cars   ;
     /*checking_amout*/
    checking_amout  = MSRP- Invoice;
    
    drop  EngineSize	Cylinders	Horsepower	MPG_City	MPG_Highway	Weight	Wheelbase	Length;
    where enginesize > 3.5;
    if checking_amout lt 1; 
 run;   

 