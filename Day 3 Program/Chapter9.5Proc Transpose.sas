/*9.5.1 vertical to horizotal*/
data example;
	input ID Months Revenue Balance;
	cards;
101 1 3 90
101 2 33 68
101 3 22 51
102 1 100 18
102 2 58 62
102 3 95 97
;

proc transpose data=example out=Output1 (drop=_NAME_) prefix=balance_;
	id months;
	var balance  ;
	by ID;
run;

proc transpose data=example out=Output1 (drop=_NAME_) prefix=Revenue_;
	id months;
	var Revenue ;
	by ID;
run;

/*9.5.2  horizotal to vertical*/
data example2;
	input ID balance_1 balance_2 balance_3 no_1 no_2 no_3;
	cards;
101 90 68 51 1 2 3
102 18 62 97 4 5 6
;

proc transpose data=example2 out=Output2 (rename=(_NAME_=Months));
	by ID;
run;
