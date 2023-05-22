

proc export data=sashelp.cars  
outfile='/home/u63329560/DATA/car.csv'  
dbms=csv;
run;



FILENAME REFFILE '/home/u63329560/DATA/car1.csv';
proc export data=sashelp.cars  
outfile= REFFILE  
dbms=tab;
run;


