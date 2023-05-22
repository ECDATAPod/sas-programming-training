/* because Excel field names often have spaces */
options validvarname=any;
 
libname xl XLSX '/home/u63329560/DATA/sales.xlsx';
 
/* discover member (DATA) names */
proc datasets lib=xl; quit;



proc sql; 
create table xl.SALES_DETAILS_bk as 
 select * from xl.SALES_DETAILS	; 
 quit;
 


libname xl clear; 