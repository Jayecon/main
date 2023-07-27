set more off
set maxvar 30000
cd ~/dropbox/goms/
use goms_eq , clear
  /*자료 변환 : 숫자형 변수를 long type으로 {{{*/
    local numvarlist ///
      pid        /// /*본분교*/
      branch     /// /*본분교*/
      birthy     /// /*출생년*/
      majorcat   /// /*전공계열*/
      school     /// /*학교유형*/
      province   /// /*학교소재권역*/
      area       /// /*학교소재지역*/
      sex        /// /*성별*/
      age        /// /*연령(조사기준일 당시)*/
      graduy     /// /*졸업년*/
      gradum     /// /*졸업월*/
      a001 a002 a003 ///
      a004_10 a005_10 a006_10 ///
      a007a_2018 a007_2018 a008_2018 a009_2018 ///
      a010 a011 /// 
      a012 a014 a020 /// 
      a021 a022 ///
      a023 a024 ///
      a116 a117 a118 ///
      a120 a121 a122 ///
      a157 a158 a159 a160 a161 a162 a163 a164 a165 ///
      d001 d002 d003 d004 d005 d006 ///
      d110 d111 d112 ///
      e001 e002 ///
      e003 e004 e005 e006 ///
      e078 e079 e080 e081 ///
      e153 e154 e155 e156 ///
      f073 f074 ///
      h001 h002 ///
      h006 h007 h008 h009 h010z ///
      h026 h027 h028 h029 h030z ///
      h046 h047 h048 h049 h050z ///
      f001 f002 f006 f007 f008 f009 ///
      p045 ///
      wt             /*가중치*/
    foreach i of local numvarlist {
      di "VAR : `i'"
      egen `i' = rowlast(`i'??)
    }
  /*}}}*/
  /*자료 변환 : 문자형 변수를 long type으로 {{{*/
    local charvarlist ///
      major          /*전공코드*/
    foreach i of local charvarlist {
      tostring `i'?? , replace force
      gen str1 `i' = ""
      replace `i' = `i'07 if year == 2007
      replace `i' = `i'08 if year == 2008
      replace `i' = `i'09 if year == 2009
      replace `i' = `i'10 if year == 2010
      replace `i' = `i'11 if year == 2011
      replace `i' = `i'12 if year == 2012
      replace `i' = `i'13 if year == 2013
      replace `i' = `i'14 if year == 2014
      replace `i' = `i'15 if year == 2015
      replace `i' = `i'16 if year == 2016
      replace `i' = `i'17 if year == 2017
      replace `i' = `i'18 if year == 2018
      replace `i' = `i'19 if year == 2019
    }
  /*}}}*/
  /*자료 변환 : 모든 변수 labeling {{{*/
    label var pid "개인ID"
    label var branch     "본분교"
      label copy G191BRAN BRANCH
      recode branch (4=3) 
      label value branch BRANCH
    label var major      "전공 세분류 "
    label var majorcat   "전공 대분류"
      label copy G191MAJO MAJORCAT
      label value majorcat MAJORCAT
    label var school     "학교유형"
        label copy G191SCHO SCHOOL
        label value school SCHOOL
    label var province   "졸업대학교 소재권역"
      label copy G191PROV PROVINCE
      label value province PROVINCE
    label var area       "졸업대학교 소재지역"
      label copy G191AREA AREA
      label value area AREA
    label var sex        "성별"
      label copy G191SEX SEX
      label value sex SEX
    label var birthy     "출생년"
    label var age        "연령(조사기준일)"
    label var graduy     "졸업년"
    label var gradum     "졸업월"
    label var wt         "가중치"
    local temp : var label a00119
      label var a001  "`temp'"
      label copy G191A001 A001
      label value a001 A001
    local temp : var label a00219
      label var a002  "`temp'"
      label copy G191A002 A002
      label value a002 A002  
    local temp : var label a00319
      label var a003  "`temp'"
      label copy G191A003 A003
      label value a003 A003  
    local temp : var label a01219
      label var a012  "`temp'"
      label copy G191A012 A012
      label value a012 A012  
    local temp : var label a01419
      label var a014  "`temp'"
      label copy LABE A014
      label value a014 A014  
    local temp : var label a02019
      label var a020  "`temp'"
      label copy G191A020 A020
      label value a020 A020  
    local temp : var label a02119
      label var a021  "`temp'"
      label copy G191A021 A021
      label value a021 A021  
    local temp : var label a02219
      label var a022  "`temp'"
      label copy G191A022 A022
      label value a022 A022  
    local temp : var label a12019
      label var a120  "`temp'"
      label copy G191A120 A120
      label value a120 A120  
    local temp : var label a12119
      label var a121  "`temp'"
      label copy G191A121 A121
      label value a121 A121  
    local temp : var label a12219
      label var a122  "`temp'"
      label copy G191A122 A122
      label value a122 A122  
    local temp : var label d00119
      label var d001  "`temp'"
      label copy G191D001 D001
      label value d001 D001  
    local temp : var label d00219
      label var d002  "`temp'"
    local temp : var label d00319
      label var d003  "`temp'"
    local temp : var label d00419
      label var d004  "`temp'"
    local temp : var label d00519
      label var d005  "`temp'"
    local temp : var label d00619
      label var d006  "`temp'"
      label copy G191D006 D006
      label value d006 D006  
    local temp : var label d11019
      label var d110  "`temp'"
      label copy G191D110 D110
      label value d110 D110  
    local temp : var label d11119
      label var d111  "`temp'"
      label copy G191D111 D111
      label value d111 D111  
    local temp : var label d11219
      label var d112  "`temp'"
      label copy G191D112 D112
      label value d112 D112  
    local temp : var label e00119
      label var e001  "`temp'"
      label copy G191E001 E001
      label value e001 E001  
    local temp : var label e00219
      label var e002  "`temp'"
    local temp : var label e00319
      label var e003  "`temp'"
    local temp : var label e00419
      label var e004  "`temp'"
    local temp : var label e00519
      label var e005  "`temp'"
    local temp : var label e00619
      label var e006  "`temp'"
    local temp : var label e07819
      label var e078  "`temp'"
    local temp : var label e07919
      label var e079  "`temp'"
    local temp : var label e08019
      label var e080  "`temp'"
    local temp : var label e08119
      label var e081  "`temp'"
    local temp : var label e15319
      label var e153  "`temp'"
    local temp : var label e15419
      label var e154  "`temp'"
    local temp : var label e15519
      label var e155  "`temp'"
    local temp : var label e15619
      label var e156  "`temp'"
    local temp : var label h00119
      label var h001  "`temp'"
      label copy G191H001 H001
      label value h001 H001  
    local temp : var label h00219
      label var h002  "`temp'"
    local temp : var label h00619
      label var h006  "`temp'"
      label copy G191H006 H006
      label value h006 H006  
    local temp : var label h00719
      label var h007  "`temp'"
      label copy G191H007 H007
      label value h007 H007  
    local temp : var label h00819
      label var h008  "`temp'"
      label copy G191H008 H008
      label value h008 H008  
    local temp : var label h00919
      label var h009  "`temp'"
      label copy G191H009 H009
      label value h009 H009  
    local temp : var label h010z19
      label var h010z "`temp'"
    local temp : var label h02619
      label var h026  "`temp'"
      label copy G191H026 H026
      label value h026 H026  
    local temp : var label h02719
      label var h027  "`temp'"
      label copy G191H027 H027
      label value h027 H027  
    local temp : var label h02819
      label var h028  "`temp'"
      label copy G191H028 H028
      label value h028 H028  
    local temp : var label h02919
      label var h029  "`temp'"
      label copy G191H029 H029
      label value h029 H029  
    local temp : var label h030z19
      label var h030z "`temp'"
    local temp : var label h04619
      label var h046  "`temp'"
      label copy G191H046 H046
      label value h046 H046  
    local temp : var label h04719
      label var h047  "`temp'"
      label copy G191H047 H047
      label value h047 H047  
    local temp : var label h04819
      label var h048  "`temp'"
      label copy G191H048 H048
      label value h048 H048  
    local temp : var label h04919
      label var h049  "`temp'"
      label copy G191H049 H049
      label value h049 H049  
    local temp : var label h050z19 
      label var h050z " `temp'"
    local temp : var label a004_1019
      label var a004_10  "`temp'"
      label copy G191A004 A004_10
      label value a004_10 A004_10  
      rename a004_10 a004_10  
    local temp : var label a005_1019
      label var a005_10  "`temp'"
      label copy G191A005 A005
      label value a005_10 A005
      rename a005_10 a005
    local temp : var label a006_1019
      label var a006_10  "`temp'"
      label copy G191A006 A006
      label value a006_10 A006
      rename a006_10 a006
    local temp : var label a007a_201819
      label var a007a_2018  "`temp'"
      label copy LABA A007A
      label value a007a_2018 A007A
      rename a007a_2018 a007A
    local temp : var label a007_201819
      label var a007_2018  "`temp'"
      label copy LABB A007
      label value a007_2018 A007
      rename a007_2018 a007
    local temp : var label a008_201819
      label var a008_2018  "`temp'"
      label copy LABC A008
      label value a008_2018 A008
      rename a008_2018 a008
    local temp : var label a009_201819
      label var a009_2018  "`temp'"
      label copy LABD A009
      label value a009_2018 A009
      rename a009_2018 a009
    local temp : var label a01019
      label var a010  "`temp'"
      label copy G191A010 A010
      label value a010 A010  
    local temp : var label a01119
      label var a011  "`temp'"
      label copy G191A011 A011
      label value a011 A011  
    local temp : var label a02319
      label var a023  "`temp'"
      label copy G191A023 A023
      label value a023 A023  
      recode a023 (4=5) (5=7) if year == 2007
    local temp : var label a02419
      label var a024  "`temp'"
      label copy G191A024 A024
      label value a024 A024  
    local temp : var label a11619
      label var a116  "`temp'"
      label copy G191A116 A116
      label value a116 A116  
    local temp : var label a11719
      label var a117  "`temp'"
      label copy G191A117 A117
      label value a117 A117  
    local temp : var label a11819
      label var a118  "`temp'"
      label copy G191A118 A118
      label value a118 A118  
    local temp : var label a15707
      label var a157  "`temp'"
      label copy G071A157 A157
      label value a157 A157  
    local temp : var label a15819
      label var a158  "`temp'"
      label copy G191A158 A158
      label value a158 A158  
    local temp : var label a15919
      label var a159  "`temp'"
      label copy G191A159 A159
      label value a159 A159  
    local temp : var label a16019
      label var a160  "`temp'"
      label copy G191A160 A160
      label value a160 A160  
    local temp : var label a16119
      label var a161  "`temp'"
      label copy G191A161 A161
      label value a161 A161  
    local temp : var label a16219
      label var a162  "`temp'"
      label copy G191A162 A162
      label value a162 A162  
    local temp : var label a16307
      label var a163  "`temp'"
      label copy G071A163 A163
      label value a163 A163  
    local temp : var label a16419
      label var a164  "`temp'"
      label copy G191A164 A164
      label value a164 A164  
    local temp : var label a16519
      label var a165  "`temp'"
      label copy G191A165 A165
      label value a165 A165  
    local temp : var label f00119
      label var f001  "`temp'"
      label copy G191F001 F001
      label value f001 f001  
    local temp : var label f00219
      label var f002  "`temp'"
      label copy G191F002 F002
      label value f002 f002  
    local temp : var label f00619
      label var f006  "`temp'"
      label copy G191F006 F006
      label value f006 F006  
    local temp : var label f00719
      label var f007  "`temp'"
      label copy LABF F007
      label value f007 F007  
    local temp : var label f00819
      label var f008  "`temp'"
      label copy G191F008 F008
      label value f008 F008  
    local temp : var label f00919
      label var f009  "`temp'"
      label copy G191F009 F009
      label value f009 F009  
      recode f009 (3/4=3) (5=4) (9=10) if year == 2007
      recode f009 (3/4=3) (5=4) (9=10) if year == 2008
      recode f009 (3/4=3) (5=4) (9=10) if year == 2009
      recode f009 (3/4=3) (5=4) (9=10) if year == 2010
      recode f009 (3/4=3) (5=4) (9=10) if year == 2011
      recode f009 (3/4=3) (5=4) (9=10) if year == 2012
      recode f009 (3/4=3) (5=4) (9=10) if year == 2013
      recode f009 (4=6) (5=7) (6=8) (7=4) (8=10) if year == 2014
    local temp : var label f07319
      label var f073  "`temp'"
      label copy G191F073 F073
      label value f073 F073  
    local temp : var label f07419
      label var f074  "`temp'"
    local temp : var label p04519
      label var p045  "`temp'"
      label copy G191P045 P045
      label value p045 P045  
  /*}}}*/
  /*변수 교정 : 년도별 응답 불일치 {{{*/
    recode a003 (2=1) (1=2) if inlist(year, 2007 )
    recode d006 (2=1) (1=2) if inlist(year, 2007, 2008) 
  /*}}}*/
  /*변수 생성 : a999 a998 {{{*/ 
    capture drop a999
      egen a999 = rowlast(a157 a158 a159)
      local temp : var label a157
        label var a999  "`temp'"
        label copy A157 A999
        label value a999 A999  
    capture drop a998
      egen a998 = rowlast(a163 a164 )
      local temp : var label a163
        label var a998  "`temp'"
        label copy A163 A998 
        label value a998 A998  
  /*}}}*/
  /*변수 생성 : expm? {{{*/ 
    capture drop expm?
    gen expm1 = (d004*12 +d005) - (d002*12 +d003) +1 if d001 == 1
      label var expm1 "첫일자리근무(월)"
    gen expm2 = (e005*12 +e006) - (e003*12 +e004) +1 if e001 == 1 & e002 == 1
      label var expm2 "경험일자리1근무(월)"
    gen expm3 = (e080*12 +e081) - (e078*12 +e079) +1 if e001 == 1 & e002 == 2
      label var expm3 "경험일자리2근무(월)"
    gen expm4 = (e155*12 +e156) - (e153*12 +e154) +1 if e001 == 1 & e002 == 3
      label var expm4 "경험일자리3근무(월)"
    gen expm5 = (h008*12 +h009) - (h006*12 +h007) +1 if h001 == 1 & h002 == 1
      label var expm5 "재학일자리1근무(월)"
    gen expm6 = (h028*12 +h029) - (h026*12 +h027) +1 if h001 == 1 & h002 == 2
      label var expm6 "재학일자리2근무(월)"
    gen expm7 = (h048*12 +h049) - (h046*12 +h047) +1 if h001 == 1 & h002 == 3
      label var expm7 "재학일자리3근무(월)"
    forvalue i = 1/7 {
      replace expm`i' = . if expm`i' < 0
    }
  /*}}}*/
  /*변수 생성 : medtyp {{{*/ 
    gen byte medtyp = .
    label var medtyp "의예계열전공"
    label define MEDTYP 1 "의학" 2 "치의학" 3 "한의학" 4 "수의학" 5 "약학"
    label value medtyp MEDTYP
      replace medtyp = 1 if year == 2007 & inlist(major , "1798" , "1799" )
      replace medtyp = 2 if year == 2007 & inlist(major , "2362" )
      replace medtyp = 3 if year == 2007 & inlist(major , "2632" )
      replace medtyp = 4 if year == 2007 & inlist(major , "1306" , "1307" )
      replace medtyp = 5 if year == 2007 & inlist(major , "1516" , "1517" , "1518" , "2173" , "2174" ) 
      replace medtyp = 1 if year != 2007 & inlist(major , "U06010100003", "U06010100004" , "U06010100005" , "U06010100017" , "U06010100021"  )
      replace medtyp = 2 if year != 2007 & inlist(major , "U06010200005" )
      replace medtyp = 3 if year != 2007 & inlist(major , "U06010300002" )
      replace medtyp = 4 if year != 2007 & inlist(major , "U05020300003" , "U05020300015" )
      replace medtyp = 5 if year != 2007 & strpos(major , "U060301" ) 
      replace medtyp = . if year != 2007 & inlist(major , "U06030100021" ) 
  /*}}}*/
  /*자료 정리 : 잔여변수 drop {{{*/
    foreach i of local numvarlist {
      drop `i'??
    }
    foreach i of local charvarlist {
      drop `i'??
    }
    /*현재나이 답변이상 사례 제거*/
      gen temp1 = age + birthy
      gen temp2 = year - temp1
      drop if !inrange(temp2 , -2 , 0 )
      drop temp?
  /*}}}*/
  merge 1:1 year pid using ~/dropbox/goms/rawdata/goms_data_univ.dta , nogen
  merge 1:1 year pid using ~/dropbox/goms/rawdata/goms_data_hs.dta , nogen
save goms_eq.dta , replace
save ~/dropbox/hl_sjho/goms_eq.dta , replace
