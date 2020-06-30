#delimit ;
capture program drop domtest;
program define domtest, byable(recall);
	syntax [varname] [if] [in] [fw pw aw] 
	, ENVironment(varname) [VRange(numlist min=2 max=2 >0 ascending) PRange(numlist min=2 max=2 >0 <1 ascending) TRace(integer 0)];

/** TRACE ON/OFF {{{*/
qui capture set trace off ;
if ("`trace'" != "0") {;
	set trace on ;
	set traced `trace' ;
}; /*}}}*/

marksample touse ;
markout `touse' `environment' ;
repalce `touse' = 0 if `varlist' <= 0 ; //Non-zero achievement

levelsof `environment' , local(typlist) ;
local typnum : word count `typlist' ;
local typnum_1 = `typnum' - 1 ;

/* MANIPULATE THE TEST RANGE {{{*/
if `"`prange'"' != "" {;
	gettoken min max : prange;
	foreach i of local typlist {;
		_pctile `varlist' [`weight' `exp'] if `environment' == `i' , p(`min', `max');
		local min = r(r1); local max = r(r2);
		replace `touse' = 0 if `environment' == `i' & !inrange(`varlist' , `min' , `max');
	};
};
if `"`vrange'"' != "" {;
	gettoken min max : vrange;
	foreach i of local typlist {;
		replace `touse' = 0 if `environment' == `i' & !inrange(`varlist' , `min' , `max');
	};
};
/*}}}*/

/*local count = 1 ;*/
/*while (`count' < `typnum') { ;*/
	/*local cplus = `count' +1 ;*/
	/*forvalues j=`cplus'/`typnum'{ ;*/

		display " ";
		display in red "{bf:Test for `1''s Dominance Betweein `environment''s `i' and `j'}" ;
		dom `1'_temp `exp'_temp `1' `exp' zmax 40 99.9 ;
		dom `1'_temp `exp'_temp `1' `exp' zmax 40 99 ;  
		dom `1'_temp `exp'_temp `1' `exp' zmax 40 95 ; 
		restore, preserve;
		quietly keep if `touse';

		if r(order) == 3 & r(cfitv) == 95 {;
			qui keep if `environment'==`i' | `environment'==`j';
			ksmirnov `1', by(`environment');
			restore, preserve;
			quietly keep if `touse';
		};
	};
};
end;

program define dom, rclass; // syntax is dom var1 wgt1 var2 wgt2 zmax #test-points
	syntax [varname] [if] [in] [fw pw aw] , ENVironment(varname) ;
	/*version 6.0;*/
	/*local x1     `1';*/
	/*local wgt1   `2';*/
	/*local x2     `3';*/
	/*local wgt2   `4';*/
	/*local zmax = `5';*/
	/*local num  = `6';*/
	/*if `7' == 95{; local confitv = 1.96; };*/
		/*else if `7' == 99{; local confitv = 2.576; };*/
		/*else if `7' == 99.9{; local confitv = 3.291; };*/

levlesof `environment' , local(typlist);
local typnum : word count `typlist' ;
local typnum_1 = `typnum' - 1 ;

foreach i of local typlist { ;
summarize `varlist' if `environmnet' == `i', meanonly;
	local min`i' = r(min); local max`i' = r(max);
};

local count = 1 ;
while (`count' < `typnum') { ;
	local cplus = `count' +1 ;
	forvalues j=`cplus'/`typnum'{ ;
	/*local disadv : word 1 of `typlist' ;*/
	local min    = max(`min`count'',`min`j'');
	local zmax    = min(`max`count'',`max`j'');
	local inter  = (`zmax'-`min')/(`num'-1);
	local done   = 0;
	local s      = 1;
	tempvar ind;
	
	display " ";
	display "minimum test point is " `min';
	display "maximum test point is " `zmax';
	display " ";

	if `zmax' <= `min' {;
		local done = 1;
		display " ";
		display as error "Error: " as text "max test point is not larger than min test point!";
		display " ";
	};
	while `done' == 0 {;
		display " ";
		display "order " `s';
		display "z          d1        d2        t-statistic";
		local alpha = `s' - 1;
		local  i    = 1;
		local  z    = `min';
		quietly gen `ind' = .;
		while `z'  <= `zmax' {;
			quietly fgt `x1' `wgt1' `z' `alpha';
				local  D1 = r(D`s') ;
				local VD1 = r(VD`s') ;
			quietly fgt `x2' `wgt2' `z' `alpha';
				local  D2 = r(D`s') ;
				local VD2 = r(VD`s') ;
			local t = (`D2'-`D1')/sqrt(`VD1'+`VD2');
			display %5.4f `z' "    " %5.4f `d1' "    " %5.4f `d2'  "    " %4.2f `t';
			local ind0 = 1.5;
			if `t' >=  `confitv' {; local ind0 = 1; };
			if `t' <= -`confitv' {; local ind0 = 2; };
			quietly replace `ind' = `ind0' if _n==`i';
			local z = `z' + `inter';
			local i = `i' + 1;
		};
		summarize `ind', meanonly;
		if r(mean) == 1 {; local done = 1;
			    global dorder = -`s';
					  display "";
			    display as result "dominance achieved at order `s' with `7'%ci";
						return scalar order = `s';
						return scalar cfitv = `7';
						local s = 1;
		};
		if r(mean) == 2 {; local done = 1;
			    global dorder = `s';
						display "";
						display as result "dominance achieved at order `s' with `7'%ci";
						return scalar order = `s';
						return scalar cfitv = `7';
						local s = 1;
		};
		if `s' >= 3		{; local done = 1;
						global dorder = 0;
						display "";
						display as result "dominance not achieved up to order 3 with `7'%ci";
						return scalar order = `s';
						return scalar cfitv = `7';
		};
		drop `ind';
	      local s = `s' + 1;
	}; 
end;

program define fgt , rclass; // syntax is fgt var1 wgt z alpha;
syntax varlist(numeric) [fw aw pw] , pov(real) alpha(real) ;

	/*local var1		 `1';*/
	/*local wgt	 	 `2';*/
	/*local z			=`3';*/
	/*local alpha		=`4';*/
	local s = `alpha' + 1;
	local afac = round(exp(lnfactorial(`alpha')),1); //a!

	tempvar N ind gap ngap;
	quietly gen `gap' = `pov' - `varlist';
	quietly gen `ind' = 0;
		quietly replace `ind' = 1 if `gap' >= 0;
	quietly gen `ngap' = `gap'/`pov';
		quietly replace `gap' = (`gap'^`alpha')	  * `ind';
		quietly replace `ngap' = (`ngap'^`alpha') * `ind';

	summarize `gap' [`weight' `exp'], meanonly;
		local dhat = r(mean)/`afac';
	summarize `ngap' [`weight' `exp'], meanonly;
		local phat = r(mean);
	quietly replace `gap' = `gap' ^ 2;
	summarize `gap' [`weight' `exp'], meanonly;
	local vdhat= (1/r(N))*((r(mean)/(`afac'^2)) - (`dhat'^2));

	return local P`alpha' = `phat';
	return local D`s' = `dhat';
	return local VD`s' = `vdhat';

	display "P"`alpha' " = " `phat';
	display "D"`s' " = " `dhat';
	display "VD"`s' " = " `vdhat';
end;
#delimit cr
