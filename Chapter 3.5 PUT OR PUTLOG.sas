
DATA example;
   INPUT name $ age weight;
   DATALINES;
John 25 180
Mary 32 145
Bob 45 200
;


DATA _NULL_;
   SET example;
   PUT name age weight;
RUN;

DATA _NULL_;
   SET example;
   FORMAT age z3.;
   PUT name age weight;
RUN;

/* update as the libname path */
FILENAME myout "/home/u63372573/SampleDataset/output.txt";

DATA _NULL_;
   FILE myout;
   SET example;
   PUTLOG name age weight;
RUN;

/* update as the libname path */
FILENAME myout "/home/u63372573/SampleDataset/output.txt";

DATA _NULL_;
   FILE myout;
   SET example;
   FORMAT age z3.;
   PUTLOG name age weight;
RUN;

