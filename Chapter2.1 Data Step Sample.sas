data class;
set sashelp.class;
call symputx('count',_n_);

%put hello: &count.;

proc print data=class;