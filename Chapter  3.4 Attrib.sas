data attribsample;
   attrib name length=$10 label='Full Name';
   attrib age format=3. informat=3. label='Age';
   input name $10. age 3.;
   datalines;
John Doeh 25
Jane Smith 35
;
run;


proc contents data=attribsample;
run;


/* Set up SASHELP.CLASS dataset */
data classSAMPLE;
set sashelp.class;
run;

/* Check the attributes of the Salary variable */
proc contents data=sashelp.class varnum;
run;

/* Modify the attribute of the Salary variable */
data classSAMPLE;
attrib Salary format=dollar10. length=8 label='Annual Salary';
set sashelp.class;
run;

/* Check the modified attributes of the Salary variable */
proc contents data=classSAMPLE varnum;
run;
