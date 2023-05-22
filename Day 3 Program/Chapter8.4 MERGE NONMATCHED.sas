
/* Merging the data sets with non-matches */
/* Creating the sample data sets */
data students;
input ID Name $ Age;
datalines;
1 John 18
2 Mary 19
3 Alex 20
;
run;

data scores;
input ID Exam1 Exam2;
datalines;
1 85 90
3 92 88
4 78 82
;
run;

/* 8.4.1  Merging the data sets with non-matches */

proc sort data  =students;
 by id;
run;

proc sort data  =scores;
 by id;
run;


data merged_data;
merge students(in=a) scores(in=b);
by ID;
if not a and b; 
run;


