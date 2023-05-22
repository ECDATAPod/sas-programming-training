
/*7.7.1 end of file option*/
data buy_last (keep= sum_amt max_date) ; 
 set SASHELP.BUY end=last;
 retain max_date sum_amt ; 
 format max_date date9. ; 
 
 if _n_ = 1 then do ; 
  max_date = date;
  sum_amt = 0;
 end; 
 
 if not max_date le date then  max_date = date;
 sum_amt =  sum(sum_amt,amount);
 
 if last ;
 
 run; 
 
 
 /*7.7.2 max and min, sum*/
 
 proc sql; 
  create table buy_sql as
   select sum(amount) as sum_amt , 
    max(date) as max_dt format date9.
    ,min(date) as min_dt format date9.
    from  SASHELP.BUY;
    quit ; 
    
    proc means data=SASHELP.BUY  sum ;
    var date  amount;
run;