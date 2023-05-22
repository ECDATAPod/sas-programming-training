/* 6.3.1 listed style input sample */
/*blank is a default delimiter*/
DATA temp;
  input  staff_id 
		staff_name $
		 staff_lname $
		 depart_id $
		 seq_id $
		 num_sales
		target_dt mmddyy8. 
		  prize comma10.;
	format target_dt mmddyy8. prize comma10.;
	DATALINES;
1024 Jason Smith 1 65 125 12/1/95 2,036
1167 Maryann White 1 68 140 12/01/95 1,800
1201 Benedictine Arnold 2 68 190 11/30/95 2,432
1302 Felicia Ho 1 63 115 01/01/96 1,972
;
run;




/* 6.3.2 listed style input sample with informat */

DATA temp;
informat staff_id 8. 
			 staff_name $20.
			 staff_lname $20.
			 depart_id $5.
			 seq_id $5.
			 num_sales 8. 
			 target_dt   mmddyy8. 
			 prize comma5.;
			 
format target_dt mmddyy8. prize comma5.;
			
  input staff_id 
		staff_name $
		staff_lname $
		depart_id $
		seq_id $
		num_sales
		target_dt   
	    prize ;

	DATALINES;
1024 Jason Smith 1 65 125 12/1/95 2,036
1167 Maryann White 1 68 140 12/01/95 1,800
1201 Benedictine Arnold 2 68 190 11/30/95 2,432
1302 Felicia Ho 1 63 115 01/01/96 1,972
;
run;

/* 6.3.2 listed style input sample with infile and informat */
DATA temp;
infile datalines dsd dlm=',' truncover;
informat staff_id 8. 
			 staff_fullname $20.
			 depart_id $5.
			 seq_id $5.
			 num_sales 8. 
			 target_dt   mmddyy8. 
			 prize comma10.;
format target_dt mmddyy8. prize comma10.;
			
  input staff_id 
		staff_fullname $
		depart_id $
		seq_id $
		num_sales
		target_dt   
	    prize ;

DATALINES;
1024,Jason Smith,1,65,125,12/1/95,"2,036"
1167,Maryann White,1,68,140, 12/01/95,"1,800"
1168,Thomas Jones,2,,190,12/02/95,"2,302"
1201,Benedictine Arnold,2,68,190,11/30/95,"2,432"
1302,Felicia Ho,1,63,115,1/1/96,"1,972"
;
run;

