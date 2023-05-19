/*previously*/
data mydataset  ; ;
  input id $ name $ age gender $ amount doj;
  informat amount dollar8. doj yymmdd10. ;
  datalines;
  001 John 25 M $1000 2014-09-02
  002 Jane 30 F $2000 2016-11-25
  003 Bob 35 M $3000 2019-01-10
  004 Alice 40 F $4000 2019-12-21
  ;
run;

/*apply format */
