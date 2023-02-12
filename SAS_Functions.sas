*SAS Functions - Concatenation;
data cars;
	set sashelp.cars;
	
	Total_MPG = sum(MPG_City,MPG_Highway);
	City_Highway = catx('-',MPG_City,MPG_Highway);

proc print;
	title 'City and Highway MPG';
	footnote 'MPG (Miles Per Gallon) is the average number of miles a car can drive using 1 gallon of gas.';
run;



/* SAS Functions - Substring */
data baseball_players_reordered;
	retain Name FirstName LastName;
	set sashelp.baseball;
	
	*finds the position of the 1st space;
	space = anyspace(name);			
	
	/*extracts string from Name column starting at
	1st space until the end*/
	FirstName = substr(name,space); 	
	
	/*extracts string from Name column starting at 
	beginning until 2 positions before the space*/
	LastName = substr(name,1,(space-2));	
	
	
proc print;
	title 'Baseball Players';
run;