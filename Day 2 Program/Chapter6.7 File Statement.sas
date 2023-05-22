data _null_;
 set sashelp.class; 
file "/home/u63329560/DATA/class.txt" encoding="utf-8"; 
put _all_; 
run;


data _null_;
 set sashelp.class; 
file "/home/u63329560/DATA/class.txt" encoding="utf-8"; 
if _n_ = 1;
put _all_; 
run;


data _null_;
 set sashelp.class ; 
file "/home/u63329560/DATA/class.txt" encoding="utf-8"; 

if _n_=1 then  put 'originalname upcasename';
put  name name $upcase8.; 
run;

