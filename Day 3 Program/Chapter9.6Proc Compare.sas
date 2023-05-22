data customers1;
 infile datalines delimiter = ',';
 input customerid $ firstname $ lastname $ middleinitial $;
 datalines;
 001, Bob, Smith, A
 002, Alex, Jones, B
 003, Tom, Cook, C
 004, Wendy, Jefferies, D
 005, Gail, Phillips, E
 006, Samantha, Williams, L
 007, Bill, Taylor, K
 008, Diane, Miller, Q
 009, Pat, White, P
 010, Donna, Summers, A
 ;
run;
 
data customers2;
 infile datalines delimiter = ',';
 input customerid $ firstname $ lastname $;
 datalines;
 001, Bobby, Smith
 002, Alex, jones
 004, Wendy, Jeffery
 005, Gail, Phillips
 006, Samantha, Williams
 007, George, Taylor
 012, Diane, Miller
 009, Pat, White
 010, Donna, Summer
 ;
run;

proc sort data = customers1; by customerid; run;
proc sort data = customers2; by customerid; run;
proc compare
 base = customers1
 compare = customers2 listcompareobs;
 id customerid;
run;