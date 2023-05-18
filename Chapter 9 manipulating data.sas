/* SUBSTR */

data example;
  input name $20.;
  length first_name $10 last_name $10;
  first_name = substr(name, 1, 5);
  last_name = substr(name, 7);
  datalines;
John Smith
;
run;

/* TRIM */

data example;
  input city $20.;
  city = trim(city);
  datalines;
   New York
;
run;


/* UPCASE */

data example;
  input name $20.;
  name = upcase(name);
  datalines;
John Smith
;
run;

/* LOWER CASE */

data example;
  input name $20.;
  name = lowcase(name);
  datalines;
John Smith
;
run;


/* CATS */

data example;
  input first_name $5. last_name $5.;
  full_name = cats(first_name, ' ', last_name);
  datalines;
John Smith
;
run;

/* input */
data example;
  input age $3.;
  numeric_age = input(age, 3.);
  datalines;
25
;
run;

/* PUT */
data example;
  input numeric_age;
  age = put(numeric_age, 3.);
  datalines;
25
;
run;

/* INTNX */
data example;
LENGTH start_date 8;
  input start_date DATE9.;
  informat start_date DATE9.;
  format start_date DATE9.;
  end_date = intnx('month', start_date, 12);
  format end_date DATE9.;
  datalines;
01JAN2022
;
run;



/* ROUND */
data example;
  input value;
  rounded_value = round(value, 2);
  datalines;
10.23456
;
run;


/* IF-THEN-Else */
data example;
  input age;
  if age >= 18 then status = 'Adult';
  else status = 'Child';
  datalines;
25
30
45
12
;
run;

/* ELSE-IF */
data example;
  input age ;
  length status $9;
  if age < 18 then status  = 'Child';
  else if age < 65 then status = 'Adult';
  else status = 'Senior';   
  datalines;
25
30
45
66
12
;
run;
