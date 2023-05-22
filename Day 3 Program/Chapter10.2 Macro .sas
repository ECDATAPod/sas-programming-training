data test.one;                                                                                                                               
   input name $20.;                                                                                                                        
   datalines;                                                                                                                              
Mrs- Jane Doe                                                                                                                           
Miss Joan Smith                                                                                                                         
;                                                                                                                                       
                                                                                                                                        

option mprint;
%macro data_spec(in_tbl_nm,inlibpath,testnm);
%let in_tbl_nm =%upcase(&in_tbl_nm);
libname BINPUT  "&inlibpath";  


/*take the column count*/
proc sql noprint;
 select count(*) 
		into  
		:colcnt trimmed/*count*/
 from dictionary.columns 
 where libname = "BINPUT" and memname = "&in_tbl_nm" and type = "char";
 quit;

%put &colcnt;

/*extended library*/
proc sql noprint;
 select name ,
		length
 into  
		:cnmm1-:cnmm&colcnt  , /*variable name*/
		:clen1-:clen&colcnt /*variable length*/		
from dictionary.columns 
 where libname = "BINPUT" and memname = "&in_tbl_nm" and type = "char";
quit;

 /*check all char */
data &testnm ; 
  set BINPUT.&in_tbl_nm. ;
  	%do i=1 %to &colcnt.;
          "&&cnmm&i"n=tranwrd("&&cnmm&i"n, "-", "");   
	%end; 
run; 


%mend; 


%data_spec(one,/home/u63329560/ABC,test.new);  

