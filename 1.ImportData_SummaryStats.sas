PROC Import datafile="/folders/myfolders/sasuser.v94/MIS543/M4/ad-sales.xlsx"
	dbms=xlsx
	out=MIS543.M4_PRODUCTSALESADVERTISING
	replace;
	getnames=yes;
run;

PROC MEANS; 
    VAR sales radio paper TV POS;
RUN;


