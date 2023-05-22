/*7.6.1 Arithmetic Operators	*/
data a;
infile datalines dsd dlm=',' ; 
 input test1  test2  test3 ;
 
test5 = test1*test2-test3;
test6 = test1*(test2-test3);
test7 = (test1*test2)-test3;

 datalines ;
 1,2,3 
 4,5,20 
 ;
 run; 