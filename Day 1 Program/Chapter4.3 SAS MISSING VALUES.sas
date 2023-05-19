
/* Creating a sample dataset */
data testdata;
   input variable1 variable2;
   datalines;
10 20
. 30
40 .
50 60
. .
;
run;

/* Checking for missing values */
data check_missing;
   set testdata;
   missing_variable1 = missing(variable1);
   missing_variable2 = missing(variable2);
run;


/* sum of  */
data sum_missing;
   set testdata;
   sum_test =sum (variable1,variable2);
   plus_test =variable1 + variable2;
run;


/*update the missing value*/
data sum_missing;
   set testdata;
   new_variable1 =coalesce(variable1,0);
   new_variable2  =coalesce(variable2,'10');
run;


data sat_scores2;
   input Test $ 1-8 Gender $ 10 Year 12-15 SATscore 17-19;
   datalines;
verbal   m 197 2.
verbal   f 1972 529
verbal   m 1975 515
verbal   f 1975 509  
math     m 1972 .
math     f 1972 489
math       1975 518
math       1975 479
;
run;

/* without missing values */
proc means data=sat_scores2 ;
class Test gender;
   var SATscore ;
run;
/*option missing*/

proc means data=sat_scores2 missing;
class Test gender;
   var SATscore ;
run;


data check_missing;
   set sat_scores2;
   missing_variable1 = missing(Gender);
run;




/*update the missing value*/
data sat_scores2_new;
   set sat_scores2;
   new_variable1 =coalescec(Gender,'N/A');
   
run;
