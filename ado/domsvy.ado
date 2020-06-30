program define domsvy
version 6.0
#delimit ;
* syntax is domsvy var1 strata1 psu1 wgt1 var2 strata2 psu2 wgt2 zmax #test-points;

  local x1     `1';
  local str1   `2';
  local psu1   `3';
  local wgt1   `4';
  local x2     `5';
  local str2   `6';
  local psu2   `7';
  local wgt2   `8';
  local zmax   `9';
  local num  = `10';

 summarize `x1', meanonly;
 local min1   = r(min);
 summarize `x2', meanonly;
 local min2   = r(min);
 local min    = max(`min1',`min2');
 local inter  = (`zmax'-`min')/(`num'-1);
 local min    = `min' + 3*`inter';
 local inter  = (`zmax'-`min')/(`num'-1);
 local done   = 0;
 local s      = 1;
 tempvar ind X1 X2;

display " ";
display "Minimum test point is " `min';
display " ";
display "Maximum test point is " `zmax';
display " ";

 if `zmax' <= `min' {;
        local done = 1;
        display " ";
        display in red "Error: " in yellow "Max test point is not larger than min test point!";
        display " ";
              };

 while `done' == 0 {;
        display " ";
        display "Order " `s';
        display "         Z          D1          D2     t-statistic";
        local alpha = `s' - 1;
        local afac  = round(exp(lnfact(`alpha')),1);
        local  i    = 2;
        local  z    = `min';
        quietly gen `ind' = .;
        while `z'  <= `zmax' + 0.0000001 {;
              qui gen double `X1' = 0;
                qui replace  `X1' = (1/`afac')*((`z'-`x1')^`alpha') if `x1'<=`z';
              qui svymean `X1' [pw=`wgt1'], strata(`str1') psu(`psu1');
               matrix est1 = e(est);
               matrix var1 = e(V_db);
               local    D1 = est1[1,1];
               local   VD1 = var1[1,1];
              qui gen double `X2' = 0;
                qui replace  `X2' = (1/`afac')*((`z'-`x2')^`alpha') if `x2'<=`z';
              qui svymean `X2' [pw=`wgt2'], strata(`str2') psu(`psu2');
               matrix est2 = e(est);
               matrix var2 = e(V_db);
               local    D2 = est2[1,1];
               local   VD2 = var2[1,1];
              local   t = (`D2'-`D1')/sqrt(`VD1'+`VD2');
              display %10.2f `z' "    " %8.2f `D1' "    " %8.2f `D2'  "    " %4.2f `t';
              local ind0 = 1.5;
              if `t' >=  1.96 {; local ind0 = 1; };
              if `t' <= -1.96 {; local ind0 = 2; };
              qui replace `ind' = `ind0' if _n==`i';
              qui drop `X1' `X2';
              local z = `z' + `inter';
              local i = `i' + 1;
              };
        summarize `ind', meanonly;
         if r(mean) == 1 {; local done = 1;
                               global Dorder = -`s';
                               display "";
                               display "Dominance achieved at order " `s';
                               local s = 1;};
         if r(mean) == 2 {; local done = 1;
                               global Dorder = `s';
                               display "";
                               display "Dominance achieved at order " `s';
                               local s = 1;};
         if `s' >= 3        {; local done = 1;
                               global Dorder = 0;
                               display "";
                               display "Dominance not achieved up to order 3";};
        drop `ind';
        local s = `s' + 1;
        };
#delimit cr;
end

 

 
