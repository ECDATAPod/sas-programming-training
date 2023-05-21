/*6.1.1 column sytle input sample*/

data scores;
   input name $ 1-18 target1 25-27 target2 30-32   target3 35-37;/*field position*/
  Datalines;
Muhammad Ali            11   32   76
Ravi Kumar S.           13   29   82
Aina Wong MEI MEI       14   27   74
;

run;;

/*6.1.2 guess why name is truncated for Aina*/
data scores;
   input name $ 1-18 target1 25-27 target2 30-32   target3 35-37;
  Datalines;
Muhammad Ali            11   32   76
Ravi Kumar S.           13   29   82
Aina Wong MEI MEI/XIN   14   27   74
;

run;

/*6.1.3 allows values to be re-read.*/

data scores;
   input name $ 1-24 name1 $ 1-24 target1 25-27 target2 30-32   target3 35-37;
  Datalines;
Muhammad Ali            11   32   76
Ravi Kumar S.           13   29   82
Aina Wong MEI MEI/XIN   14   27   74
;

run;


/*6.1.4 skip the values */
data scores;
   input name $ 1-24 name1 $ 1-24 target2 30-32   target3 35-37;
  Datalines;
Muhammad Ali            11   32   76
Ravi Kumar S.           13   29   82
Aina Wong MEI MEI/XINXIN14   27   74
;

run;

/*6.1.5 Spaces are not required between the data values*/
data scores;
   input name $ 1-24 name1 $ 1-24 target2 30-32   target3 35-37;
  Datalines;
Muhammad Ali            11   32   76
Ravi Kumar S.           13   29   82
Aina Wong MEI MEI/XINXIN   27   74
;

run;



/

