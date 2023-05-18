/* Demo1 */
/* Create a custom format */
proc format;
   value edfmt
   8-12 = '1 - Primary School'
   13-18 = '2 - High School Graduate'
run;

/* Apply the format to the EDUCATION variable */
data class_formatted;
   set sashelp.class;
   format Age edfmt.;
run;

/* DEMO2 */
/* Create a custom format */
proc format;
   value $typefmt
   'SUV' = 'Sport Utility Vehicle'
   'Sedan' = 'Sedan'
   'Wagon' = 'Station Wagon'
   'Truck' = 'Pickup Truck'
   'Sports' = 'Sports Car'
   'Hybrid' = 'Hybrid Car';
run;

/* Apply the format to the TYPE variable */
data cars_formatted;
   set sashelp.cars;
   format type typefmt.;
run;

/* DEMO3 */
/* Create a custom format */
proc format;
   value $sexfmt 'F'='Female' 'M'='Male';
run;

/* Apply the format to the SEX variable */
data class_formatted;
   set sashelp.class;
   format sex $sexfmt.;
run;

/* DEMO4 */
/* Create a custom format to categorize ages */
proc format;
  value agegrp
  0-18 = 'Child'
  19-64 = 'Adult'
  65-high = 'Senior';
run;

/* Apply the custom format to a SAS dataset */
data demo;
  input age;
  age_cat = put(age, agegrp.);
  datalines;
  10
  25
  72
  ;
run;

/* View the results */
proc print data=demo;
  var age age_cat;
run;



/* DEMO5 */
data sales;
  input date date9. item $ sales_amount country $;
  format date date9.;
  datalines;
01JAN2023 ItemA 100.50 MYR
02JAN2023 ItemB 200.25 USA
03JAN2023 ItemC 300.75 UK
;
run;

proc format ;
  value $currency 'USA'='$' 'UK'='£' 'MYR'='RM';
run;

 
data currencycountry;
  set sales;
  length salary_display $20 ;
  salary_display=cats(put(country,$currency.),put(sales_amount,comma12.2));
run;


proc report data=currencycountry;
  columns date item salary_display country;
  define date / "Date";
  define item / "Item";
  define salary_display / "salary_display" ;
  define country / "Currency";
run;

