data class;
set sashelp.class;
call symputx('count',_n_);
run;
%put hello: &count.;

proc print data=class;