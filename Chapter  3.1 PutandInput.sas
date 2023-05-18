/* proc datasets; */
/*   delete employees; */
/* run; */

data employees;
  input Employee_ID $ First_Name $ Last_Name $ Date_of_Birth  Salary;
  informat Date_of_Birth date9. Salary ;
  format Date_of_Birth date9. Salary ;
  datalines;
001 John Smith 15MAY1988 50000
002 Jane Doe 28FEB1991 65000
003 Michael Johnson 12NOV1984 75000
004 Sarah Lee 03SEP1995 40000
005 David Kim 21JUN1989 80000
;
run;



data employees2;
  input Employee_ID $ First_Name $ Last_Name $ Date_of_Birth  Salary;
  informat Date_of_Birth date9. Salary dollar20.0 ;
  format Date_of_Birth date9. Salary dollar20.0;
  datalines;
001 John Smith 15MAY1988 $50000
002 Jane Doe 28FEB1991 $65000
003 Michael Johnson 12NOV1984 $75000
004 Sarah Lee 03SEP1995 $40000
005 David Kim 21JUN1989 $80000
;
run;




/* Create a dataset with a DATE variable */
data date_data;
informat my_date Ddmmyy10.  my_dated Ddmmyy10. my_datep Ddmmyy10. my_datec Ddmmyy10. 
my_date9 DATE9. my_date11 date11. my_date7 date7. julian julian7.;
format my_date Ddmmyy10.  my_dated Ddmmyyd10. my_datep Ddmmyyp10. my_datec Ddmmyyc10. 
my_date9 DATE9. my_date11 date11. my_date7 date7. julian date10.;
input my_date my_dated my_datep my_datec  
my_date9 my_date11 my_date7 julian;
datalines;
01/01/2023 01.01.2023 01.01.2023 01:01:2023 12JAN2023 12-JAN-2023 12JAN23  2022300
;
run;



/* Create a dataset with a DATE variable */
data date_data;
informat my_date Ddmmyyyy10.  ;
input my_date;
datalines;
04/13/2023 
;
run;

 


/* Create a dataset with a time variable */
data time_data;
informat my_time time10. in_time time8. datetime18 datetime18. datetime20 datetime20.;
format my_time timeampm11. in_time time8.  datetime18 datetime18. datetime20 dateAMPM20.;
input my_time  in_time  datetime18 datetime20 ;
datalines;
 10:23:45am 10:23:45 22JAN2023:10:23:45 22JAN2023:10:23:45AM
 06:59:12pm 18:59:12 22JAN2023:18:59:12 22JAN2023:06:59:12PM
 10:15:30pm 22:15:30 22JAN2023:22:15:30 22JAN2023:10:15:30PM
  ;
run;
