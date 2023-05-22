/*9.1.1 proc sort data  replace the original dataset*/
proc sort data = sashelp.cars ;
 by Type Model;
 run; 
 
/*9.1.2 proc sort data  with output*/
proc sort data = sashelp.cars out=Model_Sorted;
 by Type Model;
run; 
 
 
proc print data=Model_Sorted;
var type model;
title 'sorted by type model ';
run;

/*9.1.3 proc sort data  dedup data */
proc sort data = sashelp.cars out=Model_dedup nodupkey;
 by Type ;
run; 


proc print data=Model_dedup;
var type ;
title 'deduct by type  ';
run;
