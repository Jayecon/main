﻿* Encoding: UTF-8.
DEFINE !StateLoop (!POSITIONAL  !CHAREND('/') 
                                / !POSITIONAL  !CMDEND) 
!DO !I !IN (!1) 
 !DO !J !IN (!2) 
    !LET !F = !QUOTE(!CONCAT("E:\Works\TIMSS\TIMSS95\T95_G8_SPSSData\",!I,!J,"m1.sav"))
    !LET !G = !QUOTE(!CONCAT("E:\Works\TIMSS\Stata\",!I,!J,"m1.dta"))
    GET FILE = !F.
    SAVE TRANSLATE OUTFILE= !G
          /TYPE=STATA
          /VERSION=13
          /EDITION=SE
          /MAP
          /REPLACE.
 !DOEND 
!DOEND 
!ENDDEFINE. 

*!StateLoop bts / isr.
!StateLoop bcg bsa bsg bst btm bts / aus aut can col cyp csk dnk gbr fra deu grc hkg hun isl irn irl isr kor kwt lva ltu nld nzl nor prt rom rus sco sgp slv svn esp swe che tha usa.
