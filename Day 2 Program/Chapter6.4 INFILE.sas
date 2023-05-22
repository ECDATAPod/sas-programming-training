/*6.5.1 read in consencutive delimited data*/

data sales;
/*specified the file path and infile option dsd  */
 infile '/home/u63329560/DATA/sales_data.csv' dlm=',' firstobs=2 dsd;
 
/*  informat  give sas instruction to read in data */
Informat ID $10.
         DATE YYMMDD10.
		 PRODUCT $20.
		 PRICE 8.
		 QUANTITY 8. ;
		


/*format  give sas instruction to format the displayed values */
format   ID  $10.
         DATE date9.
		 PRODUCT $20.
		 PRICE dollar10.2
		 QUANTITY 
		 TOTAL dollar10.2; 
		
/* input statement */
input ID $ Date PRODUCT $ PRICE QUANTITY TOTAL;
run; 


/*6.5.2 read in missing data*/

data sales;
/*specified the file path and infile option missover*/
 infile '/home/u63329560/DATA/sales_data3.csv' dlm=',' firstobs=2 dsd missover;
 
/*  informat  give sas instruction to read in data */
Informat ID $10.
         DATE YYMMDD10.
		 PRODUCT $20.
		 PRICE 8.
		 QUANTITY 8. ;
		


/*format  give sas instruction to format the displayed values */
format   ID  $10.
         DATE date9.
		 PRODUCT $20.
		 PRICE dollar10.2
		 QUANTITY 
		 TOTAL dollar10.2; 
		
/* input statement */
input ID $ Date PRODUCT $ PRICE QUANTITY TOTAL;
run; 

