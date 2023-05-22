/*sample data 1 */
data dataset1;
input ID Name $ Age;
datalines;
1 John 25
2 Emily 30
;
run;

/*sample data 2 */
data dataset2;
input ID Name $ Age;
datalines;
3 Sarah 35
4 David 40
;
run;


/*8.1.1 Append dataset */

data dataset3; 
 set dataset1 dataset2;
 run; 
 
 /*8.1.1 PROC Append dataset */

proc append data=dataset2
base =dataset1 ;
run;