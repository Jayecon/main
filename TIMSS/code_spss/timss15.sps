﻿* Encoding: UTF-8.
DEFINE !StateLoop (!POSITIONAL  !CHAREND('/') 
                                / !POSITIONAL  !CMDEND) 
!DO !I !IN (!1) 
 !DO !J !IN (!2) 
    !LET !F = !QUOTE(!CONCAT("E:\Works\TIMSS\TIMSS15\T15_G8_SPSSData\",!I,!J,"M6.sav"))
    !LET !G = !QUOTE(!CONCAT("E:\Works\TIMSS\stata\",!I,!J,"M6.dta"))
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

!StateLoop BCG BSA BSG BST BTM BTS / AUS BHR BWA CAN CHL TWN EGY ENG GEO HKG HUN IRN IRL ISR ITA JPN JOR KAZ KOR KWT LBN LTU MYS MLT MAR NZL NOR OMN QAT RUS SAU SGP SVN ZAF SWE THA TUR ARE USA. 
