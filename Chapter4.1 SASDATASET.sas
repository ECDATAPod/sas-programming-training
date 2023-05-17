/* Assign Library */
libname ECDATA '/home/u63329560/ECDATA_SAS_PROGRAMMING';

/*  Delete All Datasets in Library */
proc datasets library=ECDATA kill;


/* Create Dummy Data*/
data ECDATA.mydataset (index=(id / unique)); ;
  input id $ name $ age gender $ amount;
  datalines;
  001 John 25 M 1000
  002 Jane 30 F 2000
  003 Bob 35 M 3000
  004 Alice 40 F 4000
  ;
run;

/************ Describe a SAS Dataset*************/

/*Option 1 Proc datasets*/
proc datasets library=ECDATA ;
   contents data=mydataset  out=METADATA;
   title  'The Contents of the mydataset Data Set';
run;
quit;

/*Option 2 Proc content*/
ods output Variables=ECDATA.METADATA1;
proc contents data= ECDATA.MYDATASET;
run;
ods output close;

proc contents data=ECDATA.MYDATASET out=ECDATA.METADATA2;
   title  ‘The Contents of the Cars Table’;
run;



/*Option 3 sas dictionary table*/
PROC SQL;
SELECT *
FROM DICTIONARY.TABLES
WHERE UPCASE(LIBNAME)='ECDATA';
QUIT;

/*Option 4 proc sql describe*/
proc sql;
describe table ECDATA.MYDATASET;
quit;

libname ecdata clear;


