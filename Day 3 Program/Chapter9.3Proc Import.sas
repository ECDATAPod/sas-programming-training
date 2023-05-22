
/*9.3.1 proc import from excel */
%let path=/home/u63329560/DATA;

PROC IMPORT DATAFILE="&path/sales.xlsx"
OUT=sales_detail
DBMS=xlsx  
REPLACE;
SHEET='sales_details';
GETNAMES=YES; 
DATAROW=2; 
RUN;

PROC IMPORT DATAFILE="&path/sales.xlsx"
OUT=product
DBMS=xlsx  
REPLACE;
SHEET='product';
GETNAMES=YES; 
DATAROW=2; 
RUN;


PROC IMPORT DATAFILE="&path/sales.xlsx"
OUT=customer
DBMS=xlsx  
REPLACE;
SHEET='customer';
GETNAMES=YES; 
DATAROW=2; 
RUN;




/*9.3.2 proc import from csv */
PROC IMPORT DATAFILE="&path/sales_data.csv"
OUT=mydata3
DBMS=CSV  
REPLACE;
delimiter=',';
GETNAMES=YES; 
GUESSINGROWS=2000; 
DATAROW=2; 
RUN;
