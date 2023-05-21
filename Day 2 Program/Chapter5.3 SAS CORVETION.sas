/*5.3.1 get the sas date values -input function */

data _c_;

 length num_date 8. char_date $40.;
 
 num_date = input('01JAN1960',date9.);
 	output;
 
 num_date = input('12/31/2013',MMDDYY10.);
 	output;
 	
 num_date = input('03/04/2019',DDMMYY10.);
 output;
 
  num_date = input('07/14/1961',MMDDYY10.);
 output;
 
 run;
 
 
 /*5.3.2 get the formatted value and stored it as char-put function*/
data _c_; 

 length num_date 8. char_date $40.;

	 num_date = input('01JAN1960',date9.);
	 char_date =put(num_date,YYMMDD10.);
	output;
  
 	num_date = input('12/31/2013',MMDDYY10.);
 	char_date =put(num_date,DDMMYY10.);
 	output;
 	
 	num_date = input('03/04/2019',DDMMYY10.);
  	char_date =put(num_date,date9.);
 	output;
 
  	num_date = input('07/14/1961',MMDDYY10.);
  	char_date =put(num_date,Weekdate17.);
 	output;
 run;
 