/* 9.1.1Proc Import */
PROC IMPORT DATAFILE='/home/u63372573/Importing/sales_data.xlsx'
OUT=mydata1
DBMS=xlsx  
REPLACE;
SHEET='Sales';
GETNAMES=YES; 
DATAROW=2; 
RUN;
