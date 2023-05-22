/* Merging the data sets one-to-one */
/* Creating the sample data sets */
data dataset3;
input ID Name $ Age;
datalines;
2 Emily 30
1 John 25
;
run;

data dataset4;
input ID Salary;
datalines;
1 50000
2 60000
;
run;

/* 8.2.1 Merging the data sets one-to-one */
proc sort data = dataset3;
 by ID;
quit;

proc sort data = dataset4;
 by ID;
 quit;
 
data merged_dataset5;
merge dataset3 dataset4;
by ID;
run;