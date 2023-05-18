data putfunc;
input amount 8.2;
format amount dollar8.2;
amount_str = put(amount, dollar8.2);
datalines;
12345.50
;
Run;

data inputfunc;
input amount_str $12.;
amount = input(amount_str, dollar12.2);
datalines;
$12,345.50
;
Run;


data scanfunc;
input name $12. salary 9.2;
format salary dollar10.2;
last_name = scan(name, -1, ' ');
salary_str = put(salary, dollar10.2);
datalines;
John Smith    50000.50
;
run;
 
data catfunc;
input first_name $5. last_name $5. salary 8.2;
format salary dollar10.2;
full_name = catx(' ', first_name,last_name );
output_str = catx(' ', full_name, put(salary, dollar10.2));
put output_str;
datalines;
John Smith 50000.50
;
run;


data roundfunc;
input value 8.2;
format value dollar8.2;
rounded_value = round(value, 2);
put rounded_value;
datalines;
12345.6789
;
Run;



