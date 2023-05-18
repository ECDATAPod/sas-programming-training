/* Concatenating data sets  */
/* Creating the sample data sets */
data dataset1;
input ID Name $ Age;
datalines;
1 John 25
2 Emily 30
;
run;

data dataset2;
input ID Name $ Age;
datalines;
3 Sarah 35
4 David 40
;
run;

/* Concatenating the data sets */
data concatenated_dataset;
set dataset1 dataset2;
run;


/* Merging the data sets one-to-one */
/* Creating the sample data sets */
data dataset3;
input ID Name $ Age;
datalines;
1 John 25
2 Emily 30
;
run;

data dataset4;
input ID Salary;
datalines;
1 50000
2 60000
;
run;

/* Merging the data sets one-to-one */
data merged_dataset5;
merge dataset3 dataset4;
by ID;
run;


/* Merging the data sets one-to-many */
/* Creating the sample data sets */
data orders;
length OrderID $5 CustomerID $2  OrderDate 8;
input OrderID  CustomerID  OrderDate ;
format OrderDate YYMMDD10.;
informat OrderDate YYMMDD10.;
datalines;
1001 1 2022-01-01
1002 2 2022-02-02
;
run;

data order_details;
length OrderID $5 ProductID $4  Quantity 8;
input OrderID ProductID Quantity;
datalines;
1001 101 2
1001 102 3
1002 103 1
;
run;

/* Merging the data sets one-to-many */
data merged_data;
merge orders(in=a) order_details(in=b);
by OrderID;
if a;
run;

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

/* Merging the data sets with non-matches */
data merged_data;
merge students(in=a) scores(in=b);
by ID;
if a or b;
run;