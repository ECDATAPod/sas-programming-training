
/*9.2.1 proc export car data into tab delimiter files*/
%let path=/home/u63329560/DATA;

PROC EXPORT DATA=sashelp.cars
OUTFILE="&path/carexportfile"
DBMS=TAB REPLACE;
PUTNAMES=YES;
RUN;