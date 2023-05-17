PROC IMPORT DATAFILE='/home/u63372573/Importing/sales_data.csv'
OUT=mydata1
DBMS=CSV  
REPLACE;
delimiter=',';
GETNAMES=YES; 
GUESSINGROWS=2000; 
DATAROW=2; 
RUN;

PROC SORT DATA=mydata1;
   BY product ;
RUN;

PROC IMPORT DATAFILE='/home/u63372573/Importing/sales_data2.csv'
OUT=mydata2
DBMS=CSV 
REPLACE; 
delimiter=',';
GETNAMES=YES; 
GUESSINGROWS=2000; 
DATAROW=2; 
RUN;


/* PROC SORT */
PROC SORT DATA=mydata2;
   BY ID;
RUN;

/* PROC SORT */
PROC SORT DATA=mydata1;
   BY ID ;
RUN;

/* PROC COMPARE */
PROC COMPARE BASE=mydata1 COMPARE=mydata2;
   VAR ID product  ;
RUN;

/* PROC PRINT */
PROC PRINT DATA=mydata1;
   VAR ID Date Product Price Quantity Total;
   WHERE Product='Product B';
RUN;


/* proc mean */
PROC MEANS DATA=mydata1 MEAN MIN MAX;
   VAR Total quantity;
RUN;

/* proc FREQ */
PROC FREQ DATA=mydata1;
   TABLES Product ;
RUN;

PROC IMPORT DATAFILE='/home/u63372573/Importing/sales_data.csv'
OUT=mydata3
DBMS=CSV  
REPLACE;
delimiter=',';
GETNAMES=YES; 
GUESSINGROWS=2000; 
DATAROW=2; 
RUN;

/* proc APPEND */
PROC APPEND BASE=mydata1
            DATA=mydata2 FORCE;
            
RUN;

proc sql;
select count(*) from  mydata1;
run;

/* proc SQL */
PROC SQL;
   SELECT product,sum(total)
   FROM mydata3
   WHERE year(date) =2022
  	group by 1;
QUIT;

/* proc COPY */
PROC COPY IN=work OUT=webwork;
   SELECT mydata2;
RUN;


/* proc DELETE */
PROC DELETE DATA=mydata3;
RUN;

proc print DATA=mydata3;
RUN;

/* proc FORMAT */
PROC FORMAT;
   VALUE $product
      'Product A' = 'Fruit'
      'Product B' = 'Meat'
      'Product C' = 'Vege'
      'Product D' = 'Others'
   ;
RUN;


/* Apply the format to the product variable */
data class_formatted;
   set mydata1;
   format product $product.;
run;

/*PROC DATASETS*/ 
PROC DATASETS LIBRARY=work;
   CHANGE mydata1 = newmydata1;
   QUIT;
   
/*PROC EXPORT*/ 
PROC EXPORT DATA=mydata2
            OUTFILE='/home/u63372573/Exporting/output.csv'
            DBMS=CSV REPLACE;
RUN;

/*PROC IMPORT*/ 
PROC IMPORT DATAFILE='/home/u63372573/Importing/sales_data.csv'
            OUT=mydata4
            DBMS=CSV REPLACE;
RUN;
