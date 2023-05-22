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
1002 102 3
1001 103 1
;
run;


/* 8.3.1 Merging the data sets one-to-many */

proc sort data = orders;
 by orderid;
run;

proc sort data = order_details;
 by orderid; 
run;

data merged_data;
merge orders(in=a) order_details(in=b);
by OrderID;
if a;
run;