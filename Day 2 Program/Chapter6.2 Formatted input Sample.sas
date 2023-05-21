/* 6.2.1 formatted style input sample */

DATA temp;
  input @1  staff_id 4. 
		@6  staff_name $11. 
		@18 staff_lname $6.
		@34 target_dt mmddyy8. 
		@43 prize comma5.;
	format target_dt mmddyy8. prize comma5.;
	DATALINES;
1024 Jason       Smith  1 65 125 12/1/95  2,036
1167 Maryann     White  1 68 140 12/01/95 1,800
1168 Thomas      Jones  2    190 12/2/95  2,302
1201 Benedictine Arnold 2 68 190 11/30/95 2,432
1302 Felicia     Ho     1 63 115 1/1/96   1,972
			;
			
run;

/*6.2.2 use pointer */
DATA temp;
  input @1  staff_id 4. 
		@6  staff_name $11. 
		@18 staff_lname $6.        /*absolute pointer*/
		+3 points 2.              /*relative pointer*/
		+5 target_dt mmddyy8. 
		+1 prize comma5.;
	format target_dt mmddyy8. prize comma5.;
	DATALINES;
1024 Alice       Smith  1 65 125 12/1/95  2,036
1167 Maryann     White  1 68 140 12/01/95 1,800
1168 Thomas      Jones  2    190 12/2/95  2,302
1201 Benedictine Arnold 2 68 190 11/30/95 2,432
1302 Felicia     Ho     1 63 115 1/1/96   1,972
			;
RUN;
 
PROC PRINT data = temp;
	title 'Output dataset: TEMP';
	id subj;
RUN;


/*6.2.2 use pointer*/
DATA temp;
  input @1  staff_id 4. 
		@6  staff_name $11. 
		@18 staff_lname $6.
		+10 target_dt mmddyy8. 
		+1 prize comma5.;
	format target_dt mmddyy8. prize comma5.;
	DATALINES;
1024 Alice       Smith  1 65 125 12/1/95  2,036
1167 Maryann     White  1 68 140 12/01/95 1,800
1168 Thomas      Jones  2    190 12/2/95  2,302
1201 Benedictine Arnold 2 68 190 11/30/95 2,432
1302 Felicia     Ho     1 63 115 1/1/96   1,972
			;
		RUN;
 
PROC PRINT data = temp;
	title 'Output dataset: TEMP';
	id subj;
RUN;


