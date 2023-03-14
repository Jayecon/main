local path "~/dropbox/kels/rawdata/"
cd `path'
  /* Variable list for Y1 {{{*/
  local vlisty1 ///
    SID         /// 학생id
    GENDER      /// 학생 성별
    SCHID       /// 학교id
    BIRTH_YEAR  /// 출생년도
    BIRTH_MONTH /// 출생월
    Y1S2        /// 초등학교6학년성적
    Y1S29_1     /// 용돈금액(만원)
    Y1S29_2     /// 용돈금액(천원)
    Y1KOR       /// 성취도검사 응시여부(국어)
    Y1ENG       /// 성취도검사 응시여부(영어)
    Y1MAT       /// 성취도검사 응시여부(수학)
    Y1KOR_S     /// 1학년_국어_총점
    Y1ENG_S     /// 1학년_영어_총점
    Y1MAT_S     /// 1학년_수학_총점
    Y1KOR_V     /// 1학년 국어 척도점수
    Y1ENG_V     /// 1학년 영어 척도점수
    Y1MAT_V     /// 1학년 수학 척도점수
    Y1P2_1      /// 아버지(남보호자) 연령
    Y1P2_2      /// 어머니(여보호자) 연령
    Y1P4_1      /// 형제자매수1(오빠,형,언니,누나)
    Y1P4_2      /// 형제자매수2(남동생 또는 여동생)
    Y1P4_3      /// 형제자매수3(동갑내기 형제 또는 자매)
    Y1P5        /// 혼인상태
    Y1P8        /// 아버지 직업(한국표준직업분류코드)
    Y1P9        /// 어머니 직업(한국표준직업분류코드)
    Y1P10_1     /// 아버지 최종 학력
    Y1P10_2     /// 어머니 최종 학력
    Y1P11       /// 주거형태
    Y1P17_1     /// 부의 수입
    Y1P17_2     /// 모의 수입
    Y1P17_3     /// 총 가구소득
    Y1P18       /// 자녀교육비
    Y1P32_1     /// 장애 유무
    Y1P32_2     /// 장애 유형
    Y1P33       /// 문제행동 보고
    Y1EVA       /// 학생평가지 응답 여부
    Y1E10       /// 장애 여부
    /* Y1 school & teacher var{{{*/
      /*REGION      /// 지역규모*/
      /*POLICY      /// 해당연도의 해당학교 소재지에 따른 평준화지역 적용 여부*/
      /*SECTOR      /// 설립구분*/
      /*COEDU       /// 남녀공학/별학*/
      /*y1class1    /// 1학년 학급*/
      /*y1student1  /// 1학년 학생*/
      /*y1db1_1     /// (교원)전체교원수*/
      /*y1db1_3     /// (교원)교사수(기간제포함)*/
      /*y1db1_4     /// (교원)기간제교사수*/
      /*y1db1_5     /// (교원)기타교원수*/
      /*y1db1_6     /// (교원)시간강사수*/
      /*y1db1_7     /// (교원)평균학력*/
      /*y1db1_8     /// (교원)사범대학출신비율*/
      /*y1db1_9     /// (교원)평균경력*/
      /*y1db1_10    /// (교원)주당평균수업시수*/
      /*y1db1_11    /// (교원)사무직원수*/
      /*y1db1_12    /// (교원)평균현임교재직년수*/
      /*y1db2_1_1   /// (시설)교수학습공간_정규교실*/
      /*y1db2_1_2   /// (시설)교수학습공간_도서실*/
      /*y1db2_1_3   /// (시설)교수학습공간_시청각실*/
      /*y1db2_1_4   /// (시설)교수학습공간_다목적실*/
      /*y1db2_1_5   /// (시설)교수학습공간_수준별교실*/
      /*Y1DB2_2_1   /// (시설)특별교실_과학실*/
      /*Y1DB2_2_2   /// (시설)특별교실_음악실*/
      /*Y1DB2_2_3   /// (시설)특별교실_미술실*/
      /*Y1DB2_2_4   /// (시설)특별교실_기술실*/
      /*Y1DB2_2_5   /// (시설)특별교실_가사실*/
      /*Y1DB2_2_6   /// (시설)특별교실_어학실*/
      /*Y1DB2_2_7   /// (시설)특별교실_컴퓨터실*/
      /*Y1DB2_2_8   /// (시설)특별교실_멀티미디어실*/
      /*Y1DB2_2_9   /// (시설)특별교실_교과교실*/
      /*Y1DB3_1     /// (도서관) 종류*/
      /*Y1DB3_2     /// (도서관) 직원수*/
      /*Y1DB3_3     /// (도서관) 좌석수*/
      /*Y1DB3_4     /// (도서관) 장서수*/
      /*Y1DB3_7     /// (도서관) 연간예산(천원)*/
      /*Y1DB4_1     /// (교육용PC)교육청예산*/
      /*Y1DB4_2     /// (교육용PC)학교자체예산*/
      /*Y1DB4_3     /// (교육용PC)민간참여*/
      /*Y1DB4_4     /// (교육용PC)기증*/
      /*Y1DB4_5     /// (교육용PC)관리전환*/
      /*Y1DB4_6     /// (교육용PC)기타*/
      /*Y1DB5_1_1   /// (장학금)정부지원_학생수*/
      /*Y1DB5_1_2   /// (장학금)정부지원_금액(천원)*/
      /*Y1DB5_2_1   /// (장학금)지방지원_학생수*/
      /*Y1DB5_2_2   /// (장학금)지방지원_금액(천원)*/
      /*Y1DB5_3_1   /// (장학금)기타_학생수*/
      /*Y1DB5_3_2   /// (장학금)기타_금액(천원)*/
      /*Y1DB5_4_1   /// (장학금)학교운영지원비면제_학생수*/
      /*Y1DB5_4_2   /// (장학금)학교운영지원비면제_금액(천원)*/
      /*Y1DB7_3     /// (진학) 특목고 진학 인원*/
      /*Y1H4_1      /// (예산)2004학년도 학교운영지원회계_지출총액*/
      /*Y1H4_2      /// (예산)2004학년도 '교수학습활동비'_지출총액*/
      /*Y1H4_3      /// (예산)2005학년도 학교운영지원회계_예산총액*/
      /*Y1H4_4      /// (예산)2005학년도 '교수학습활동비'_예산총액*/
      /*Y1H5_1      /// (예산비중)정부지원(중앙정부,교육청)*/
      /*Y1H5_2      /// (예산비중)기부금,후원금,학교발전기금*/
      /*Y1H5_3      /// (예산비중)학교운영지원비*/
      /*Y1H5_4      /// (예산비중)기초단체보조금*/
      /*Y1H5_5      /// (예산비중)법인전입금(사립학교)*/
      /*Y1H5_6      [>  (예산비중)기타 <]*/
      /*NO          /// 교사일련번호*/
      /*y1t1        /// 성별*/
      /*y1t2        /// 연령*/
      /*y1t3_1      /// 전체교직경력(년)*/
      /*y1t3_2      /// 전체교직경력(월)*/
      /*y1t4_1      /// 현재학교교직경력(년)*/
      /*y1t4_2      /// 현재학교교직경력(월)*/
      /*y1t5        /// 최종학력*/
      /*y1t6        /// 교직이수*/
      /*y1t7        /// 직위*/
    /*}}}*/
  /*}}}*/
  /* Variable list for Y2 {{{*/
  local vlisty2 ///
    SID          /// 학생ID
    SCHID        /// 학교ID
    GENDER       /// 성별
    Y2STU        /// 학생 설문지 조사 여부
    Y2KOR        /// 성취도검사 응시여부(국어)
    Y2ENG        /// 성취도검사 응시여부(영어)
    Y2MAT        /// 성취도검사 응시여부(수학)
    Y2KOR_S      /// 2학년_국어_총점
    Y2ENG_S      /// 2학년_영어_총점
    Y2MAT_S      /// 2학년_수학_총점
    Y2KOR_V      /// 2학년 국어 척도점수
    Y2ENG_V      /// 2학년 영어 척도점수
    Y2MAT_V      /// 2학년 수학 척도점수
    Y2PAR        /// 학부모 설문지 조사 여부
    Y2P2_1       /// 동거가족1(아버지)
    Y2P2_2       /// 동거가족2(남자보호자)
    Y2P2_3       /// 동거가족3(어머니)
    Y2P2_4       /// 동거가족4(여자보호자)
    Y2P2_5       /// 동거가족5(남자형제)
    Y2P2_6       /// 동거가족6(여자형제 및 자매)
    Y2P2_7       /// 동거가족7(할아버지나 할머니)
    Y2P2_8       /// 동거가족8(친척)
    Y2P2_9       /// 동거가족9(기타)
    Y2P3_1       /// 형제자매수1(오빠,형,언니,누나)
    Y2P3_2       /// 형제자매수2(남동생 또는 여동생)
    Y2P3_3       /// 형제자매수3(동갑내기 형제 또는 자매)
    Y2P4         /// 혼인상태
    Y2P5_1       /// 주거형태1(소유여부)
    Y2P5_2       /// 주거형태2(주택유형)
    Y2P6         /// 아버지 직업(한국표준직업분류코드)
    Y2P7         /// 어머니 직업(한국표준직업분류코드)
    Y2P16_1      /// 학습, 신체, 감정 장애 및 유형1(유무)
    Y2P16_2      /// 학습, 신체, 감정 장애 및 유형2(유형)
    Y2P17_1      /// 부의 수입
    Y2P17_2      /// 모의 수입
    Y2P17_3      /// 총 가구소득
    Y2P18_1      /// 자녀교육비1(모든자녀)
    Y2P18_2      /// 자녀교육비2(해당자녀)
    Y2P22        /// 문제행동 보고
    Y2E10        /// 장애 여부
    Y2E22_1      /// 학생이받는지원1_장학금
    Y2E22_2      /// 학생이받는지원2_학교운영지원비면제
    Y2E22_3      /// 학생이받는지원3_급식지원
    Y2E22_4      /// 학생이받는지원4_기초생활수급비
    Y2E22_5      /// 학생이받는지원5_해당사항없음
    Y2E22_6      /// 학생이받는지원6_잘모르겠음
    /* Y2 school & teacher var{{{*/
      /*TID          /// 교사일련번호*/
      /*Y2T1         /// 성별*/
      /*Y2T2         /// 연령*/
      /*Y2T3_1       /// 전체교직경력(년)*/
      /*Y2T3_2       /// 전체교직경력(월)*/
      /*Y2T4_1       /// 현재학교교직경력(년)*/
      /*Y2T4_2       /// 현재학교교직경력(월)*/
      /*Y2T5         /// 최종학력*/
      /*Y2T6         /// 교직이수*/
      /*schid        /// 학교ID*/
      /*Y2region     /// 지역규모*/
      /*Y2policy     /// 해당연도의 해당학교 소재지에 따른 평준화지역 적용 여부*/
      /*Y2sector     /// 설립구분*/
      /*Y2coedu      /// 남녀공학/별학*/
      /*Y2class2     /// 2학년 학급*/
      /*Y2student2   /// 2학년 학생*/
      /*Y2db1_1      /// (교원)전체교원수*/
      /*Y2db1_2      /// (교원)교감수*/
      /*Y2db1_3      /// (교원)교사수(기간제포함)*/
      /*Y2db1_4      /// (교원)기간제교사수*/
      /*Y2db1_5      /// (교원)기타교원수*/
      /*Y2db1_6      /// (교원)시간강사수*/
      /*Y2db1_7      /// (교원)평균학력*/
      /*Y2db1_8      /// (교원)사범대학출신비율*/
      /*Y2db1_9      /// (교원)평균경력*/
      /*Y2db1_10     /// (교원)주당평균수업시수*/
      /*Y2db1_11     /// (교원)사무직원수*/
      /*Y2db1_12     /// (교원)평균현임교재직년수*/
      /*Y2db2_1_1    /// (시설)교수학습공간_정규교실*/
      /*Y2db2_1_2    /// (시설)교수학습공간_도서실*/
      /*Y2db2_1_3    /// (시설)교수학습공간_시청각실*/
      /*Y2db2_1_4    /// (시설)교수학습공간_다목적실*/
      /*Y2db2_1_5    /// (시설)교수학습공간_수준별교실*/
      /*Y2db2_2_1    /// (시설)특별교실_과학실*/
      /*Y2db2_2_2    /// (시설)특별교실_음악실*/
      /*Y2db2_2_3    /// (시설)특별교실_미술실*/
      /*Y2db2_2_4    /// (시설)특별교실_기술실*/
      /*Y2db2_2_5    /// (시설)특별교실_가사실*/
      /*Y2db2_2_6    /// (시설)특별교실_어학실*/
      /*Y2db2_2_7    /// (시설)특별교실_컴퓨터실*/
      /*Y2db2_2_8    /// (시설)특별교실_멀티미디어실*/
      /*Y2db2_2_9    /// (시설)특별교실_교과교실*/
      /*Y2db2_3_1    /// (시설)교원편의시설_교무실*/
      /*Y2db2_3_2    /// (시설)교원편의시설_교사연구실*/
      /*Y2db2_3_3    /// (시설)교원편의시설_교재연구실*/
      /*Y2db2_3_4    /// (시설)교원편의시설_탈의실*/
      /*Y2db2_3_5    /// (시설)교원편의시설_휴게실*/
      /*Y2db3_1      /// (도서관) 종류*/
      /*Y2db3_2      /// (도서관) 직원수*/
      /*Y2db3_3      /// (도서관) 좌석수*/
      /*Y2db3_4      /// (도서관) 장서수*/
      /*Y2db3_5      /// (도서관) 연간이용자수*/
      /*Y2db3_6      /// (도서관) 연간이용책수*/
      /*Y2db3_7      /// (도서관) 연간예산(천원)*/
      /*Y2db4_1      /// (교육용PC)교육청예산*/
      /*Y2db4_2      /// (교육용PC)학교자체예산*/
      /*Y2db4_3      /// (교육용PC)민간참여*/
      /*Y2db4_4      /// (교육용PC)기증*/
      /*Y2db4_5      /// (교육용PC)관리전환*/
      /*Y2db4_6      /// (교육용PC)기타*/
      /*Y2db5_1_1    /// (장학금)정부지원_학생수*/
      /*Y2db5_1_2    /// (장학금)정부지원_금액(천원)*/
      /*Y2db5_2_1    /// (장학금)지방지원_학생수*/
      /*Y2db5_2_2    /// (장학금)지방지원_금액(천원)*/
      /*Y2db5_3_1    /// (장학금)기타_학생수*/
      /*Y2db5_3_2    /// (장학금)기타_금액(천원)*/
      /*Y2db5_4_1    /// (장학금)학교운영지원비면제_학생수*/
      /*Y2db5_4_2    /// (장학금)학교운영지원비면제_금액(천원)*/
      /*Y2db7_3      /// (진학) 특목고 진학 인원*/
      /*w2h3_1       /// (예산)2005학년도 학교운영지원회계_지출총액*/
      /*w2h3_2       /// (예산)2005학년도 '교수학습활동비'_지출총액*/
      /*w2h3_3       /// (예산)2006학년도 학교운영지원회계_예산총액*/
      /*w2h3_4       /// (예산)2006학년도 '교수학습활동비'_예산총액*/
      /*w2h4_1       /// (예산비중)정부지원(중앙정부,교육청)*/
      /*w2h4_2       /// (예산비중)기부금,후원금,학교발전기금*/
      /*w2h4_3       /// (예산비중)학교운영지원비*/
      /*w2h4_4       /// (예산비중)기초단체보조금*/
      /*w2h4_5       /// (예산비중)법인전입금(사립학교)*/
      /*w2h4_6       /// (예산비중)기타*/
      /*w2h4_6code   [>  (예산비중)기타 code <]*/
    /*}}}*/
  /*}}}*/
  /* Variable list for Y3 {{{*/
  local vlisty3 ///
    SID           /// 학생ID
    SCHID         /// 학교ID
    GENDER        /// 학생성별
    Y3S39         /// 전학이유
    Y3KOR         /// 국어 응시 여부
    Y3ENG         /// 영어 응시 여부
    Y3MAT         /// 수학 응시 여부
    Y3KOR_S       /// 국어_원점수
    Y3ENG_S       /// 영어_원점수
    Y3MAT_S       /// 수학_원점수
    Y3KOR_V       /// 국어_척도점수
    Y3ENG_V       /// 영어_척도점수
    Y3MAT_V       /// 수학_척도점수
    Y3PAR         /// 학부모 설문지 응답여부
    Y3P2          /// 형제자매수
    Y3P3          /// 자녀중몇째
    Y3P20_1       /// 부_월 평균 수입
    Y3P20_2       /// 모_월 평균 수입
    Y3P20_3       /// 가구 월 평균 총 수입
    Y3P21_1       /// 자녀교육비1(모든자녀)(최종조정)
    Y3P21_2       /// 자녀교육비2(해당자녀)(최종조정)
    Y3P29         /// 자녀전학이유
    SID           /// 학생ID
    SCHID         /// 학교ID
    GENDER        /// 학생성별
    SID           /// 학생id
    SCHID         /// 학교id
    GENDER        /// 학생성별
    Y3EVA         /// 학생평가지 응답여부
    Y3E12_1       /// 학생이받는지원1_성적장학금
    Y3E12_2       /// 학생이받는지원2_성적우수 이외장학금
    Y3E12_3       /// 학생이받는지원3_학교운영비면제
    Y3E12_4       /// 학생이받는지원4_급식지원
    Y3E12_5       /// 학생이받는지원5_기초생활수급비
    Y3E12_6       /// 학생이받는지원6_해당사항없음
    Y3E12_7       /// 학생이받는지원7_잘모르겠음
    /* Y3 school & teacher var{{{*/
      /*TID           /// 교사ID*/
      /*SCHID         /// 학교ID*/
      /*Y3T1          /// 성별*/
      /*Y3T2          /// 연령*/
      /*Y3T3          /// 최종학력*/
      /*Y3T4          /// 교직이수*/
      /*Y3T5_1        /// 전체경력_년*/
      /*Y3T5_2        /// 전체경력_월*/
      /*Y3T6_1        /// 현학교경력_년*/
      /*Y3T6_2        /// 현학교경력_월*/
      /*Y3T7          /// 보직형태*/
      /*SCHID         /// 학교ID*/
      /*Y3SCH         /// 응답여부*/
      /*Y3region      /// 지역규모*/
      /*Y3policy      /// 해당연도의 해당학교 소재지에 따른 평준화지역 적용 여부*/
      /*Y3sector      /// 설립구분*/
      /*Y3coedu       /// 남녀공학/별학*/
      /*Y3class3      /// 3학년 학급*/
      /*Y3student3    /// 3학년 학생*/
      /*Y3db1_1       /// (교원)전체교원수*/
      /*Y3db1_2       /// (교원)교감수*/
      /*Y3db1_3       /// (교원)교사수(기간제포함)*/
      /*Y3db1_4       /// (교원)기간제교사수*/
      /*Y3db1_5       /// (교원)기타교원수*/
      /*Y3db1_6       /// (교원)시간강사수*/
      /*Y3db1_7       /// (교원)평균학력*/
      /*Y3db1_8       /// (교원)사범대학출신비율*/
      /*Y3db1_9       /// (교원)평균경력*/
      /*Y3db1_10      /// (교원)주당평균수업시수*/
      /*Y3db1_11      /// (교원)사무직원수*/
      /*Y3db1_12      /// (교원)평균현임교재직년수*/
      /*Y3db2_1_1     /// (시설)교수학습공간_정규교실*/
      /*Y3db2_1_2     /// (시설)교수학습공간_도서실*/
      /*Y3db2_1_3     /// (시설)교수학습공간_시청각실*/
      /*Y3db2_1_4     /// (시설)교수학습공간_다목적실*/
      /*Y3db2_1_5     /// (시설)교수학습공간_수준별교실*/
      /*Y3db2_2_1     /// (시설)특별교실_과학실*/
      /*Y3db2_2_2     /// (시설)특별교실_음악실*/
      /*Y3db2_2_3     /// (시설)특별교실_미술실*/
      /*Y3db2_2_4     /// (시설)특별교실_기술실*/
      /*Y3db2_2_5     /// (시설)특별교실_가사실*/
      /*Y3db2_2_6     /// (시설)특별교실_어학실*/
      /*Y3db2_2_7     /// (시설)특별교실_컴퓨터실*/
      /*Y3db2_2_8     /// (시설)특별교실_멀티미디어실*/
      /*Y3db2_2_9     /// (시설)특별교실_교과교실*/
      /*Y3db2_3_1     /// (시설)교원편의시설_교무실*/
      /*Y3db2_3_2     /// (시설)교원편의시설_교사연구실*/
      /*Y3db2_3_3     /// (시설)교원편의시설_교재연구실*/
      /*Y3db2_3_4     /// (시설)교원편의시설_탈의실*/
      /*Y3db2_3_5     /// (시설)교원편의시설_휴게실*/
      /*Y3db3_1       /// (도서관) 종류*/
      /*Y3db3_2       /// (도서관) 직원수*/
      /*Y3db3_3       /// (도서관) 좌석수*/
      /*Y3db3_4       /// (도서관) 장서수*/
      /*Y3db3_5       /// (도서관) 연간이용자수*/
      /*Y3db3_6       /// (도서관) 연간이용책수*/
      /*Y3db3_7       /// (도서관) 연간예산(천원)*/
      /*Y3db4_1       /// (교육용PC)교육청예산*/
      /*Y3db4_2       /// (교육용PC)학교자체예산*/
      /*Y3db4_3       /// (교육용PC)민간참여*/
      /*Y3db4_4       /// (교육용PC)기증*/
      /*Y3db4_5       /// (교육용PC)관리전환*/
      /*Y3db4_6       /// (교육용PC)기타*/
      /*Y3db5_1_1     /// (장학금)정부지원_학생수*/
      /*Y3db5_1_2     /// (장학금)정부지원_금액(천원)*/
      /*Y3db5_2_1     /// (장학금)지방지원_학생수*/
      /*Y3db5_2_2     /// (장학금)지방지원_금액(천원)*/
      /*Y3db5_3_1     /// (장학금)기타_학생수*/
      /*Y3db5_3_2     /// (장학금)기타_금액(천원)*/
      /*Y3db5_4_1     /// (장학금)학교운영지원비면제_학생수*/
      /*Y3db5_4_2     /// (장학금)학교운영지원비면제_금액(천원)*/
      /*Y3db6_1_1     /// (학생변동) 증가_전입(도외)*/
      /*Y3db7_3       [>  (진학) 특목고 진학 인원 <]*/
    /*}}}*/
  /*}}}*/
  /* Variable list for Y6 {{{*/
  local vlisty6 ///
    SID            /// 학생ID
    SCHID          /// 학교ID
    GENDER         /// 성별
    S7_1           /// 선택교과_선택이유
    S7_2_A1        /// 대수능선택교과_수리영역_수학Ⅰ
    S7_2_A2        /// 대수능선택교과_수리영역_수학Ⅱ
    S7_2_A3        /// 대수능선택교과_수리영역_미분과적분
    S7_2_A4        /// 대수능선택교과_수리영역_확률과통계
    S7_2_A5        /// 대수능선택교과_수리영역_이산수학
    S11_A          /// 학교숙제및공부시간_언어영역(시간/주)
    S11_B          /// 학교숙제및공부시간_수리영역(시간/주)
    S11_C          /// 학교숙제및공부시간_외국어(영어)영역(시간/주)
    S11_D          /// 학교숙제및공부시간_사회탐구영역(시간/주)
    S11_E          /// 학교숙제및공부시간_과학탐구영역(시간/주)
    S11_F          /// 학교숙제및공부시간_직업탐구영역(시간/주)
    S11_G          /// 학교숙제및공부시간_논술(시간/주)
    S11_H          /// 학교숙제및공부시간_예체능(시간/주)
    S11_I          /// 학교숙제및공부시간_자격증취득(시간/주)
    S11_J          /// 학교숙제및공부시간_전문교과(시간/주)
    S15            /// 어학연수 또는 해외재학 경험여부
    S15_1_1A       /// 어학연수 시기1(중복응답)
    S15_1_1B       /// 어학연수 시기2(중복응답)
    S15_1_2A       /// 외국소재학교재학 시기1(중복응답)
    S15_1_2B       /// 외국소재학교재학 시기2(중복응답)
    S15_2_1        /// 어학연수 기간
    S15_2_2        /// 외국소재학교재학 기간
    SID            /// 학생ID
    SCHID          /// 학교ID
    GENDER         /// 학생 성별
    P10A_B1        /// 사교육_학원_주당평균시간_언어영역
    P10A_C1        /// 사교육_학원_월평균비용_언어영역
    P10A_B2        /// 사교육_학원_주당평균시간_수리영역
    P10A_C2        /// 사교육_학원_월평균비용_수리영역
    P10A_B3        /// 사교육_학원_주당평균시간_외국어(영어)영역
    P10A_C3        /// 사교육_학원_월평균비용_외국어(영어)영역
    P10A_B4        /// 사교육_학원_주당평균시간_사회탐구영역
    P10A_C4        /// 사교육_학원_월평균비용_사회탐구영역
    P10A_B5        /// 사교육_학원_주당평균시간_과학탐구영역
    P10A_C5        /// 사교육_학원_월평균비용_과학탐구영역
    P10A_B6        /// 사교육_학원_주당평균시간_직업탐구영역
    P10A_C6        /// 사교육_학원_월평균비용_직업탐구영역
    P10A_B7        /// 사교육_학원_주당평균시간_예체능
    P10A_C7        /// 사교육_학원_월평균비용_예체능
    P10A_B8        /// 사교육_학원_주당평균시간_논술
    P10A_C8        /// 사교육_학원_월평균비용_논술
    P10A_B9        /// 사교육_학원_주당평균시간_자격증취득
    P10A_C9        /// 사교육_학원_월평균비용_자격증취득
    P10A_B10       /// 사교육_학원_주당평균시간_전문교과
    P10A_C10       /// 사교육_학원_월평균비용_전문교과
    P10B_A1        /// 사교육_과외_총수강기간_언어영역
    P10B_A2        /// 사교육_과외_총수강기간_수리영역
    P10B_A3        /// 사교육_과외_총수강기간_외국어(영어)영역
    P10B_A4        /// 사교육_과외_총수강기간_사회탐구영역
    P10B_A5        /// 사교육_과외_총수강기간_과학탐구영역
    P10B_A6        /// 사교육_과외_총수강기간_직업탐구영역
    P10B_A7        /// 사교육_과외_총수강기간_논술
    P10B_A8        /// 사교육_과외_총수강기간_예체능
    P10B_A9        /// 사교육_과외_총수강기간_자격증취득
    P10B_A10       /// 사교육_과외_총수강기간_전문교과
    P10B_B1        /// 사교육_과외_주당평균시간_언어영역
    P10B_C1        /// 사교육_과외_월평균비용_언어영역
    P10B_B2        /// 사교육_과외_주당평균시간_수리영역
    P10B_C2        /// 사교육_과외_월평균비용_수리영역
    P10B_B3        /// 사교육_과외_주당평균시간_외국어(영어)영역
    P10B_C3        /// 사교육_과외_월평균비용_외국어(영어)영역
    P10B_B4        /// 사교육_과외_주당평균시간_사회탐구영역
    P10B_C4        /// 사교육_과외_월평균비용_사회탐구영역
    P10B_B5        /// 사교육_과외_주당평균시간_과학탐구영역
    P10B_C5        /// 사교육_과외_월평균비용_과학탐구영역
    P10B_B6        /// 사교육_과외_주당평균시간_직업탐구영역
    P10B_C6        /// 사교육_과외_월평균비용_직업탐구영역
    P10B_B7        /// 사교육_과외_주당평균시간_예체능
    P10B_C7        /// 사교육_과외_월평균비용_예체능
    P10B_B8        /// 사교육_과외_주당평균시간_논술
    P10B_C8        /// 사교육_과외_월평균비용_논술
    P10B_B9        /// 사교육_과외_주당평균시간_자격증취득
    P10B_C9        /// 사교육_과외_월평균비용_자격증취득
    P10B_B10       /// 사교육_과외_주당평균시간_전문교과
    P10B_C10       /// 사교육_과외_월평균비용_전문교과
    P10C_A1        /// 사교육_학습지_총수강기간_언어영역
    P10C_A2        /// 사교육_학습지_총수강기간_수리영역
    P10C_A3        /// 사교육_학습지_총수강기간_외국어(영어)영역
    P10C_A4        /// 사교육_학습지_총수강기간_사회탐구영역
    P10C_A5        /// 사교육_학습지_총수강기간_과학탐구영역
    P10C_B1        /// 사교육_학습지_주당평균시간_언어영역
    P10C_C1        /// 사교육_학습지_월평균비용_언어영역
    P10C_B2        /// 사교육_학습지_주당평균시간_수리영역
    P10C_C2        /// 사교육_학습지_월평균비용_수리영역
    P10C_B3        /// 사교육_학습지_주당평균시간_외국어(영어)영역
    P10C_C3        /// 사교육_학습지_월평균비용_외국어(영어)영역
    P10C_B4        /// 사교육_학습지_주당평균시간_사회탐구영역
    P10C_C4        /// 사교육_학습지_월평균비용_사회탐구영역
    P10C_B5        /// 사교육_학습지_주당평균시간_과학탐구영역
    P10C_C5        /// 사교육_학습지_월평균비용_과학탐구영역
    P10D_A1        /// 사교육_통신인터넷강의_총수강기간_언어영역
    P10D_A2        /// 사교육_통신인터넷강의_총수강기간_수리영역
    P10D_A3        /// 사교육_통신인터넷강의_총수강기간_외국어(영어)영역
    P10D_A4        /// 사교육_통신인터넷강의_총수강기간_사회탐구영역
    P10D_A5        /// 사교육_통신인터넷강의_총수강기간_과학탐구영역
    P10D_A6        /// 사교육_통신인터넷강의_총수강기간_직업탐구영역
    P10D_A7        /// 사교육_통신인터넷강의_총수강기간_논술
    P10D_A8        /// 사교육_통신인터넷강의_총수강기간_예체능
    P10D_A9        /// 사교육_통신인터넷강의_총수강기간_자격증취득
    P10D_A10       /// 사교육_통신인터넷강의_총수강기간_전문교과
    P10D_B1        /// 사교육_통신인터넷강의_주당평균시간_언어영역
    P10D_C1        /// 사교육_통신인터넷강의_월평균비용_언어영역
    P10D_B2        /// 사교육_통신인터넷강의_주당평균시간_수리영역
    P10D_C2        /// 사교육_통신인터넷강의_월평균비용_수리영역
    P10D_B3        /// 사교육_통신인터넷강의_주당평균시간_외국어(영어)영역
    P10D_C3        /// 사교육_통신인터넷강의_월평균비용_외국어(영어)영역
    P10D_B4        /// 사교육_통신인터넷강의_주당평균시간_사회탐구영역
    P10D_C4        /// 사교육_통신인터넷강의_월평균비용_사회탐구영역
    P10D_B5        /// 사교육_통신인터넷강의_주당평균시간_과학탐구영역
    P10D_C5        /// 사교육_통신인터넷강의_월평균비용_과학탐구영역
    P10D_B6        /// 사교육_통신인터넷강의_주당평균시간_직업탐구영역
    P10D_C6        /// 사교육_통신인터넷강의_월평균비용_직업탐구영역
    P10D_B7        /// 사교육_통신인터넷강의_주당평균시간_예체능
    P10D_C7        /// 사교육_통신인터넷강의_월평균비용_예체능
    P10D_B8        /// 사교육_통신인터넷강의_주당평균시간_논술
    P10D_C8        /// 사교육_통신인터넷강의_월평균비용_논술
    P10D_B9        /// 사교육_통신인터넷강의_주당평균시간_자격증취득
    P10D_C9        /// 사교육_통신인터넷강의_월평균비용_자격증취득
    P10D_B10       /// 사교육_통신인터넷강의_주당평균시간_전문교과
    P10D_C10       /// 사교육_통신인터넷강의_월평균비용_전문교과
    P11_A1         /// EBS인터넷및방송_총시청(수강)기간_언어영역
    P11_A2         /// EBS인터넷및방송_총시청(수강)기간_수리영역
    P11_A3         /// EBS인터넷및방송_총시청(수강)기간_외국어(영어)영역
    P11_A4         /// EBS인터넷및방송_총시청(수강)기간_사회탐구영역
    P11_A5         /// EBS인터넷및방송_총시청(수강)기간_과학탐구영역
    P11_A6         /// EBS인터넷및방송_총시청(수강)기간_직업탐구영역
    P11_B1         /// EBS인터넷및방송_주당평균시청(수강)시간_언어영역
    P11_C1         /// EBS인터넷및방송_월평균시청(수강)비용_언어영역
    P11_B2         /// EBS인터넷및방송_주당평균시청(수강)시간_수리영역
    P11_C2         /// EBS인터넷및방송_월평균시청(수강)비용_수리영역
    P11_B3         /// EBS인터넷및방송_주당평균시청(수강)시간_외국어(영어)영역
    P11_C3         /// EBS인터넷및방송_월평균시청(수강)비용_외국어(영어)영역
    P11_B4         /// EBS인터넷및방송_주당평균시청(수강)시간_사회탐구영역
    P11_C4         /// EBS인터넷및방송_월평균시청(수강)비용_사회탐구영역
    P11_B5         /// EBS인터넷및방송_주당평균시청(수강)시간_과학탐구영역
    P11_C5         /// EBS인터넷및방송_월평균시청(수강)비용_과학탐구영역
    P11_B6         /// EBS인터넷및방송_주당평균시청(수강)시간_직업탐구영역
    P11_C6         /// EBS인터넷및방송_월평균시청(수강)비용_직업탐구영역
    P12            /// EBS 수능 시험 반영 정책이 사교육에 미치는 영향
    P13_1          /// 월평균가구소득
    P13_2          /// 해당자녀의 월평균 교육비
    P13_3          /// 해당자녀의 총 교육비 중에서 지출하는 월평균 사교육비
    SID            /// 학생ID
    GENDER         /// 학생 성별
    SCHID          /// 학교ID
    SID            /// 학생ID
    GENDER         /// 학생 성별
    SCHID          /// 학교ID
    E6_1           /// 장학금(성적 우수 장학금)
    E6_2           /// 장학금(성적 우수 장학금 이외)
    E6_3           /// 등록금
    E6_4           /// 학교 운영 지원비
    E6_5           /// 급식비
    E9_1           /// 학생의 학업 성적
    E12_1          /// 한부모 가정 혹은 조손가정
    E12_2          /// 다문화가정
    E12_3          /// 기초생활보장 수급자
    E12_4          /// 차상위계층, 차차상위계층
    E12_5          /// 해당사항 없음
    E13_1          /// 1학년 봉사활동 시간
    E13_2          /// 2학년 봉사활동 시간
    E13_3          /// 3학년 봉사활동 시간
    E13_4          /// 고등학교(1,2,3학년) 봉사활동 시간 총계
    E15_12_1A      /// 수능_언어영역 선택여부(응시원서 접수단계에서 선택 여부 결정)
    E15_12_1B      /// 수능_수리영역 유형별 선택(응시원서 접수단계에서 선택 여부 결정)
    E15_12_1C      /// 수능_외국어영역 선택 여부(응시원서 접수단계에서 선택 여부 결정)
    E15_12_1D      /// 수능_탐구영역 유형(응시원서 접수단계에서 선택 여부 결정)
    E15_12_1D_1    /// 수능_탐구영역 선택과목1
    E15_12_1D_2    /// 수능_탐구영역 선택과목2
    E15_12_1D_3    /// 수능_탐구영역 선택과목3
    E15_12_1D_4    /// 수능_탐구영역 선택과목4
    E15_12_1E      /// 수능_제2외국어명
    E15_12_2A      /// 수능_결시1 (1교시 응시여부)
    E15_12_2B      /// 수능_결시2 (2교시 응시여부)
    E15_12_2C      /// 수능_결시3 (3교시 응시여부)
    E15_12_2D      /// 수능_결시4 (4교시 응시여부)
    E15_12_2E      /// 수능_결시5 (5교시 응시여부)
    E15_12_3A      /// 수능_언어영역_표준점수
    E15_12_3B      /// 수능_수리영역_표준점수
    E15_12_3C      /// 수능_외국어영역_표준점수
    E15_12_3D_1    /// 수능_탐구영역 선택과목1_표준점수
    E15_12_3D_2    /// 수능_탐구영역 선택과목2_표준점수
    E15_12_3D_3    /// 수능_탐구영역 선택과목3_표준점수
    E15_12_3D_4    /// 수능_탐구영역 선택과목4_표준점수
    E15_12_3E      /// 수능_제2외국어영역_표준점수
    E15_12_4D_1    /// 수능_탐구영역 선택과목1_등급
    E15_12_4D_2    /// 수능_탐구영역 선택과목2_등급
    E15_12_4D_3    /// 수능_탐구영역 선택과목3_등급
    E15_12_4D_4    /// 수능_탐구영역 선택과목4_등급
    E15_12_4E      /// 수능_제2외국어영역_등급
    /* Y6 school & teacher var{{{*/
      /*SCHID          /// 학교ID*/
      /*재학표본학생수 /// 해당 학교에 재학하고 있는 패널 학생수*/
      /*Y6POLICY       /// 해당연도의 해당학교 소재지에 따른 평준화지역 적용 여부*/
      /*Y6REG          /// 지역규모*/
      /*계열           /// 계열*/
      /*학교구분       /// 학교구분*/
      /*고교유형       /// 고교유형*/
      /*설립구분       /// 설립구분*/
      /*공학여부       /// 공학여부*/
      /*Y6CLASSTOTAL   /// 학급수계*/
      /*Y6CLASS1       /// 학급수_1학년*/
      /*Y6CLASS2       /// 학급수_2학년*/
      /*Y6CLASS3       /// 학급수_3학년*/
      /*Y6STUDENTTOTAL /// 학생수계*/
      /*Y6STUDENT_M    /// 남자학생수*/
      /*Y6STUDENT_F    /// 여자학생수*/
      /*Y6STUDENT_M_1  /// 남자학생수_1학년*/
      /*Y6STUDENT_F_1  /// 여자학생수_1학년*/
      /*Y6STUDENT1     /// 학생수계_1학년*/
      /*Y6STUDENT_M_2  /// 남자학생수_2학년*/
      /*Y6STUDENT_F_2  /// 여자학생수_2학년*/
      /*Y6STUDENT2     /// 학생수계_2학년*/
      /*Y6STUDENT_M_3  /// 남학생수_3학년*/
      /*Y6STUDENT_F_3  /// 여학생수_3학년*/
      /*Y6STUDENT3     /// 학생수계_3학년*/
      /*Y6ENTER        /// 입학정원*/
      /*Y6DB1_1        /// 지원자*/
      /*Y6DB1_2        /// 입학자*/
      /*Y6DB1_3        /// 교원수계*/
      /*Y6DB2_1        /// 장학금수여자_정부장학금*/
      /*Y6DB2_2        /// 장학금수여자_지방장학금*/
      /*Y6DB2_3        /// 장학금수여자_기타장학금*/
      /*Y6DB2_4        /// 장학금수여자_수업료면제*/
      /*Y6DB2_5        /// 장학금수여자_학교운영지원비면제*/
      /*Y6DB2_6        /// 장학금수여액_정부장학금*/
      /*Y6DB2_7        /// 장학금수여액_지방장학금*/
      /*Y6DB2_8        /// 장학금수여액_기타장학금*/
      /*Y6DB2_9        /// 장학금수여액_수업료면제*/
      /*Y6DB2_10       /// 장학금수여액_학교운영지원비면제*/
      /*Y6DB3_4        /// 사범대학출신교원*/
      /*Y6DB3_5        /// 정규교사*/
      /*Y6DB3_6        /// 기간제교사*/
      /*Y6DB3_7        /// 학력년수17이상*/
      /*Y6DB3_8        /// 평균학력년수*/
      /*Y6DB3_9        /// 평균교직경력*/
      /*Y6DB3_10       /// 평균연령*/
      /*Y6DB4_14       /// 도서관실수*/
      /*Y6DB4_15       /// 도서관장서수*/
      /*Y6DB4_16       /// 도서관좌석수*/
      /*Y6DB4_17       /// 교육용컴퓨터보유현황*/
      /*Y6DB4_18       [>  교원용컴퓨터보유현황 <]*/
    /*}}}*/
  /*}}}*/

use kels_master , clear
  keep WAVE `vlisty1' `vlisty2' `vlisty3' `vlisty6' 
  /* Variable labeling {{{*/
    label var SID         "학생id"
    label var GENDER      "학생 성별"
    label var SCHID       "학교id"
    label var BIRTH_YEAR  "출생년도"
    label var BIRTH_MONTH "출생월"
    label var Y1S2        "초등학교6학년성적"
    label var Y1S29_1     "용돈금액(만원)"
    label var Y1S29_2     "용돈금액(천원)"
    label var Y1KOR       "성취도검사 응시여부(국어)"
    label var Y1ENG       "성취도검사 응시여부(영어)"
    label var Y1MAT       "성취도검사 응시여부(수학)"
    label var Y1KOR_S     "1학년_국어_총점"
    label var Y1ENG_S     "1학년_영어_총점"
    label var Y1MAT_S     "1학년_수학_총점"
    label var Y1KOR_V     "1학년 국어 척도점수"
    label var Y1ENG_V     "1학년 영어 척도점수"
    label var Y1MAT_V     "1학년 수학 척도점수"
    label var Y1P2_1      "아버지(남보호자) 연령"
    label var Y1P2_2      "어머니(여보호자) 연령"
    label var Y1P4_1      "형제자매수1(오빠,형,언니,누나)"
    label var Y1P4_2      "형제자매수2(남동생 또는 여동생)"
    label var Y1P4_3      "형제자매수3(동갑내기 형제 또는 자매)"
    label var Y1P5        "혼인상태"
    label var Y1P8        "아버지 직업(한국표준직업분류코드)"
    label var Y1P9        "어머니 직업(한국표준직업분류코드)"
    label var Y1P10_1     "아버지 최종 학력"
    label var Y1P10_2     "어머니 최종 학력"
    label var Y1P11       "주거형태"
    label var Y1P17_1     "부의 수입"
    label var Y1P17_2     "모의 수입"
    label var Y1P17_3     "총 가구소득"
    label var Y1P18       "자녀교육비"
    label var Y1P32_1     "장애 유무"
    label var Y1P32_2     "장애 유형"
    label var Y1P33       "문제행동 보고"
    label var Y1EVA       "학생평가지 응답 여부"
    label var Y1E10       "장애 여부"
    label var SID          "학생ID"
    label var SCHID        "학교ID"
    label var GENDER       "성별"
    label var Y2STU        "학생 설문지 조사 여부"
    label var Y2KOR        "성취도검사 응시여부(국어)"
    label var Y2ENG        "성취도검사 응시여부(영어)"
    label var Y2MAT        "성취도검사 응시여부(수학)"
    label var Y2KOR_S      "2학년_국어_총점"
    label var Y2ENG_S      "2학년_영어_총점"
    label var Y2MAT_S      "2학년_수학_총점"
    label var Y2KOR_V      "2학년 국어 척도점수"
    label var Y2ENG_V      "2학년 영어 척도점수"
    label var Y2MAT_V      "2학년 수학 척도점수"
    label var Y2PAR        "학부모 설문지 조사 여부"
    label var Y2P2_1       "동거가족1(아버지)"
    label var Y2P2_2       "동거가족2(남자보호자)"
    label var Y2P2_3       "동거가족3(어머니)"
    label var Y2P2_4       "동거가족4(여자보호자)"
    label var Y2P2_5       "동거가족5(남자형제)"
    label var Y2P2_6       "동거가족6(여자형제 및 자매)"
    label var Y2P2_7       "동거가족7(할아버지나 할머니)"
    label var Y2P2_8       "동거가족8(친척)"
    label var Y2P2_9       "동거가족9(기타)"
    label var Y2P3_1       "형제자매수1(오빠,형,언니,누나)"
    label var Y2P3_2       "형제자매수2(남동생 또는 여동생)"
    label var Y2P3_3       "형제자매수3(동갑내기 형제 또는 자매)"
    label var Y2P4         "혼인상태"
    label var Y2P5_1       "주거형태1(소유여부)"
    label var Y2P5_2       "주거형태2(주택유형)"
    label var Y2P6         "아버지 직업(한국표준직업분류코드)"
    label var Y2P7         "어머니 직업(한국표준직업분류코드)"
    label var Y2P16_1      "학습, 신체, 감정 장애 및 유형1(유무)"
    label var Y2P16_2      "학습, 신체, 감정 장애 및 유형2(유형)"
    label var Y2P17_1      "부의 수입"
    label var Y2P17_2      "모의 수입"
    label var Y2P17_3      "총 가구소득"
    label var Y2P18_1      "자녀교육비1(모든자녀)"
    label var Y2P18_2      "자녀교육비2(해당자녀)"
    label var Y2P22        "문제행동 보고"
    label var Y2E10        "장애 여부"
    label var Y2E22_1      "학생이받는지원1_장학금"
    label var Y2E22_2      "학생이받는지원2_학교운영지원비면제"
    label var Y2E22_3      "학생이받는지원3_급식지원"
    label var Y2E22_4      "학생이받는지원4_기초생활수급비"
    label var Y2E22_5      "학생이받는지원5_해당사항없음"
    label var Y2E22_6      "학생이받는지원6_잘모르겠음"
    label var SID           "학생ID"
    label var SCHID         "학교ID"
    label var GENDER        "학생성별"
    label var Y3S39         "전학이유"
    label var Y3KOR         "국어 응시 여부"
    label var Y3ENG         "영어 응시 여부"
    label var Y3MAT         "수학 응시 여부"
    label var Y3KOR_S       "국어_원점수"
    label var Y3ENG_S       "영어_원점수"
    label var Y3MAT_S       "수학_원점수"
    label var Y3KOR_V       "국어_척도점수"
    label var Y3ENG_V       "영어_척도점수"
    label var Y3MAT_V       "수학_척도점수"
    label var Y3PAR         "학부모 설문지 응답여부"
    label var Y3P2          "형제자매수"
    label var Y3P3          "자녀중몇째"
    label var Y3P20_1       "부_월 평균 수입"
    label var Y3P20_2       "모_월 평균 수입"
    label var Y3P20_3       "가구 월 평균 총 수입"
    label var Y3P21_1       "자녀교육비1(모든자녀)(최종조정)"
    label var Y3P21_2       "자녀교육비2(해당자녀)(최종조정)"
    label var Y3P29         "자녀전학이유"
    label var SID           "학생ID"
    label var SCHID         "학교ID"
    label var GENDER        "학생성별"
    label var SID           "학생id"
    label var SCHID         "학교id"
    label var GENDER        "학생성별"
    label var Y3EVA         "학생평가지 응답여부"
    label var Y3E12_1       "학생이받는지원1_성적장학금"
    label var Y3E12_2       "학생이받는지원2_성적우수 이외장학금"
    label var Y3E12_3       "학생이받는지원3_학교운영비면제"
    label var Y3E12_4       "학생이받는지원4_급식지원"
    label var Y3E12_5       "학생이받는지원5_기초생활수급비"
    label var Y3E12_6       "학생이받는지원6_해당사항없음"
    label var Y3E12_7       "학생이받는지원7_잘모르겠음"
    label var SID            "학생ID"
    label var SCHID          "학교ID"
    label var GENDER         "성별"
    label var S7_1           "선택교과_선택이유"
    label var S7_2_A1        "대수능선택교과_수리영역_수학Ⅰ"
    label var S7_2_A2        "대수능선택교과_수리영역_수학Ⅱ"
    label var S7_2_A3        "대수능선택교과_수리영역_미분과적분"
    label var S7_2_A4        "대수능선택교과_수리영역_확률과통계"
    label var S7_2_A5        "대수능선택교과_수리영역_이산수학"
    label var S11_A          "학교숙제및공부시간_언어영역(시간/주)"
    label var S11_B          "학교숙제및공부시간_수리영역(시간/주)"
    label var S11_C          "학교숙제및공부시간_외국어(영어)영역(시간/주)"
    label var S11_D          "학교숙제및공부시간_사회탐구영역(시간/주)"
    label var S11_E          "학교숙제및공부시간_과학탐구영역(시간/주)"
    label var S11_F          "학교숙제및공부시간_직업탐구영역(시간/주)"
    label var S11_G          "학교숙제및공부시간_논술(시간/주)"
    label var S11_H          "학교숙제및공부시간_예체능(시간/주)"
    label var S11_I          "학교숙제및공부시간_자격증취득(시간/주)"
    label var S11_J          "학교숙제및공부시간_전문교과(시간/주)"
    label var S15            "어학연수 또는 해외재학 경험여부"
    label var S15_1_1A       "어학연수 시기1(중복응답)"
    label var S15_1_1B       "어학연수 시기2(중복응답)"
    label var S15_1_2A       "외국소재학교재학 시기1(중복응답)"
    label var S15_1_2B       "외국소재학교재학 시기2(중복응답)"
    label var S15_2_1        "어학연수 기간"
    label var S15_2_2        "외국소재학교재학 기간"
    label var SID            "학생ID"
    label var SCHID          "학교ID"
    label var GENDER         "학생 성별"
    label var P10A_B1        "사교육_학원_주당평균시간_언어영역"
    label var P10A_C1        "사교육_학원_월평균비용_언어영역"
    label var P10A_B2        "사교육_학원_주당평균시간_수리영역"
    label var P10A_C2        "사교육_학원_월평균비용_수리영역"
    label var P10A_B3        "사교육_학원_주당평균시간_외국어(영어)영역"
    label var P10A_C3        "사교육_학원_월평균비용_외국어(영어)영역"
    label var P10A_B4        "사교육_학원_주당평균시간_사회탐구영역"
    label var P10A_C4        "사교육_학원_월평균비용_사회탐구영역"
    label var P10A_B5        "사교육_학원_주당평균시간_과학탐구영역"
    label var P10A_C5        "사교육_학원_월평균비용_과학탐구영역"
    label var P10A_B6        "사교육_학원_주당평균시간_직업탐구영역"
    label var P10A_C6        "사교육_학원_월평균비용_직업탐구영역"
    label var P10A_B7        "사교육_학원_주당평균시간_예체능"
    label var P10A_C7        "사교육_학원_월평균비용_예체능"
    label var P10A_B8        "사교육_학원_주당평균시간_논술"
    label var P10A_C8        "사교육_학원_월평균비용_논술"
    label var P10A_B9        "사교육_학원_주당평균시간_자격증취득"
    label var P10A_C9        "사교육_학원_월평균비용_자격증취득"
    label var P10A_B10       "사교육_학원_주당평균시간_전문교과"
    label var P10A_C10       "사교육_학원_월평균비용_전문교과"
    label var P10B_A1        "사교육_과외_총수강기간_언어영역"
    label var P10B_A2        "사교육_과외_총수강기간_수리영역"
    label var P10B_A3        "사교육_과외_총수강기간_외국어(영어)영역"
    label var P10B_A4        "사교육_과외_총수강기간_사회탐구영역"
    label var P10B_A5        "사교육_과외_총수강기간_과학탐구영역"
    label var P10B_A6        "사교육_과외_총수강기간_직업탐구영역"
    label var P10B_A7        "사교육_과외_총수강기간_논술"
    label var P10B_A8        "사교육_과외_총수강기간_예체능"
    label var P10B_A9        "사교육_과외_총수강기간_자격증취득"
    label var P10B_A10       "사교육_과외_총수강기간_전문교과"
    label var P10B_B1        "사교육_과외_주당평균시간_언어영역"
    label var P10B_C1        "사교육_과외_월평균비용_언어영역"
    label var P10B_B2        "사교육_과외_주당평균시간_수리영역"
    label var P10B_C2        "사교육_과외_월평균비용_수리영역"
    label var P10B_B3        "사교육_과외_주당평균시간_외국어(영어)영역"
    label var P10B_C3        "사교육_과외_월평균비용_외국어(영어)영역"
    label var P10B_B4        "사교육_과외_주당평균시간_사회탐구영역"
    label var P10B_C4        "사교육_과외_월평균비용_사회탐구영역"
    label var P10B_B5        "사교육_과외_주당평균시간_과학탐구영역"
    label var P10B_C5        "사교육_과외_월평균비용_과학탐구영역"
    label var P10B_B6        "사교육_과외_주당평균시간_직업탐구영역"
    label var P10B_C6        "사교육_과외_월평균비용_직업탐구영역"
    label var P10B_B7        "사교육_과외_주당평균시간_예체능"
    label var P10B_C7        "사교육_과외_월평균비용_예체능"
    label var P10B_B8        "사교육_과외_주당평균시간_논술"
    label var P10B_C8        "사교육_과외_월평균비용_논술"
    label var P10B_B9        "사교육_과외_주당평균시간_자격증취득"
    label var P10B_C9        "사교육_과외_월평균비용_자격증취득"
    label var P10B_B10       "사교육_과외_주당평균시간_전문교과"
    label var P10B_C10       "사교육_과외_월평균비용_전문교과"
    label var P10C_A1        "사교육_학습지_총수강기간_언어영역"
    label var P10C_A2        "사교육_학습지_총수강기간_수리영역"
    label var P10C_A3        "사교육_학습지_총수강기간_외국어(영어)영역"
    label var P10C_A4        "사교육_학습지_총수강기간_사회탐구영역"
    label var P10C_A5        "사교육_학습지_총수강기간_과학탐구영역"
    label var P10C_B1        "사교육_학습지_주당평균시간_언어영역"
    label var P10C_C1        "사교육_학습지_월평균비용_언어영역"
    label var P10C_B2        "사교육_학습지_주당평균시간_수리영역"
    label var P10C_C2        "사교육_학습지_월평균비용_수리영역"
    label var P10C_B3        "사교육_학습지_주당평균시간_외국어(영어)영역"
    label var P10C_C3        "사교육_학습지_월평균비용_외국어(영어)영역"
    label var P10C_B4        "사교육_학습지_주당평균시간_사회탐구영역"
    label var P10C_C4        "사교육_학습지_월평균비용_사회탐구영역"
    label var P10C_B5        "사교육_학습지_주당평균시간_과학탐구영역"
    label var P10C_C5        "사교육_학습지_월평균비용_과학탐구영역"
    label var P10D_A1        "사교육_통신인터넷강의_총수강기간_언어영역"
    label var P10D_A2        "사교육_통신인터넷강의_총수강기간_수리영역"
    label var P10D_A3        "사교육_통신인터넷강의_총수강기간_외국어(영어)영역"
    label var P10D_A4        "사교육_통신인터넷강의_총수강기간_사회탐구영역"
    label var P10D_A5        "사교육_통신인터넷강의_총수강기간_과학탐구영역"
    label var P10D_A6        "사교육_통신인터넷강의_총수강기간_직업탐구영역"
    label var P10D_A7        "사교육_통신인터넷강의_총수강기간_논술"
    label var P10D_A8        "사교육_통신인터넷강의_총수강기간_예체능"
    label var P10D_A9        "사교육_통신인터넷강의_총수강기간_자격증취득"
    label var P10D_A10       "사교육_통신인터넷강의_총수강기간_전문교과"
    label var P10D_B1        "사교육_통신인터넷강의_주당평균시간_언어영역"
    label var P10D_C1        "사교육_통신인터넷강의_월평균비용_언어영역"
    label var P10D_B2        "사교육_통신인터넷강의_주당평균시간_수리영역"
    label var P10D_C2        "사교육_통신인터넷강의_월평균비용_수리영역"
    label var P10D_B3        "사교육_통신인터넷강의_주당평균시간_외국어(영어)영역"
    label var P10D_C3        "사교육_통신인터넷강의_월평균비용_외국어(영어)영역"
    label var P10D_B4        "사교육_통신인터넷강의_주당평균시간_사회탐구영역"
    label var P10D_C4        "사교육_통신인터넷강의_월평균비용_사회탐구영역"
    label var P10D_B5        "사교육_통신인터넷강의_주당평균시간_과학탐구영역"
    label var P10D_C5        "사교육_통신인터넷강의_월평균비용_과학탐구영역"
    label var P10D_B6        "사교육_통신인터넷강의_주당평균시간_직업탐구영역"
    label var P10D_C6        "사교육_통신인터넷강의_월평균비용_직업탐구영역"
    label var P10D_B7        "사교육_통신인터넷강의_주당평균시간_예체능"
    label var P10D_C7        "사교육_통신인터넷강의_월평균비용_예체능"
    label var P10D_B8        "사교육_통신인터넷강의_주당평균시간_논술"
    label var P10D_C8        "사교육_통신인터넷강의_월평균비용_논술"
    label var P10D_B9        "사교육_통신인터넷강의_주당평균시간_자격증취득"
    label var P10D_C9        "사교육_통신인터넷강의_월평균비용_자격증취득"
    label var P10D_B10       "사교육_통신인터넷강의_주당평균시간_전문교과"
    label var P10D_C10       "사교육_통신인터넷강의_월평균비용_전문교과"
    label var P11_A1         "EBS인터넷및방송_총시청(수강)기간_언어영역"
    label var P11_A2         "EBS인터넷및방송_총시청(수강)기간_수리영역"
    label var P11_A3         "EBS인터넷및방송_총시청(수강)기간_외국어(영어)영역"
    label var P11_A4         "EBS인터넷및방송_총시청(수강)기간_사회탐구영역"
    label var P11_A5         "EBS인터넷및방송_총시청(수강)기간_과학탐구영역"
    label var P11_A6         "EBS인터넷및방송_총시청(수강)기간_직업탐구영역"
    label var P11_B1         "EBS인터넷및방송_주당평균시청(수강)시간_언어영역"
    label var P11_C1         "EBS인터넷및방송_월평균시청(수강)비용_언어영역"
    label var P11_B2         "EBS인터넷및방송_주당평균시청(수강)시간_수리영역"
    label var P11_C2         "EBS인터넷및방송_월평균시청(수강)비용_수리영역"
    label var P11_B3         "EBS인터넷및방송_주당평균시청(수강)시간_외국어(영어)영역"
    label var P11_C3         "EBS인터넷및방송_월평균시청(수강)비용_외국어(영어)영역"
    label var P11_B4         "EBS인터넷및방송_주당평균시청(수강)시간_사회탐구영역"
    label var P11_C4         "EBS인터넷및방송_월평균시청(수강)비용_사회탐구영역"
    label var P11_B5         "EBS인터넷및방송_주당평균시청(수강)시간_과학탐구영역"
    label var P11_C5         "EBS인터넷및방송_월평균시청(수강)비용_과학탐구영역"
    label var P11_B6         "EBS인터넷및방송_주당평균시청(수강)시간_직업탐구영역"
    label var P11_C6         "EBS인터넷및방송_월평균시청(수강)비용_직업탐구영역"
    label var P12            "EBS 수능 시험 반영 정책이 사교육에 미치는 영향"
    label var P13_1          "월평균가구소득"
    label var P13_2          "해당자녀의 월평균 교육비"
    label var P13_3          "해당자녀의 총 교육비 중에서 지출하는 월평균 사교육비"
    label var SID            "학생ID"
    label var GENDER         "학생 성별"
    label var SCHID          "학교ID"
    label var SID            "학생ID"
    label var GENDER         "학생 성별"
    label var SCHID          "학교ID"
    label var E6_1           "장학금(성적 우수 장학금)"
    label var E6_2           "장학금(성적 우수 장학금 이외)"
    label var E6_3           "등록금"
    label var E6_4           "학교 운영 지원비"
    label var E6_5           "급식비"
    label var E9_1           "학생의 학업 성적"
    label var E12_1          "한부모 가정 혹은 조손가정"
    label var E12_2          "다문화가정"
    label var E12_3          "기초생활보장 수급자"
    label var E12_4          "차상위계층, 차차상위계층"
    label var E12_5          "해당사항 없음"
    label var E13_1          "1학년 봉사활동 시간"
    label var E13_2          "2학년 봉사활동 시간"
    label var E13_3          "3학년 봉사활동 시간"
    label var E13_4          "고등학교(1,2,3학년) 봉사활동 시간 총계"
    label var E15_12_1A      "수능_언어영역 선택여부(응시원서 접수단계에서 선택 여부 결정)"
    label var E15_12_1B      "수능_수리영역 유형별 선택(응시원서 접수단계에서 선택 여부 결정)"
    label var E15_12_1C      "수능_외국어영역 선택 여부(응시원서 접수단계에서 선택 여부 결정)"
    label var E15_12_1D      "수능_탐구영역 유형(응시원서 접수단계에서 선택 여부 결정)"
    label var E15_12_1D_1    "수능_탐구영역 선택과목1"
    label var E15_12_1D_2    "수능_탐구영역 선택과목2"
    label var E15_12_1D_3    "수능_탐구영역 선택과목3"
    label var E15_12_1D_4    "수능_탐구영역 선택과목4"
    label var E15_12_1E      "수능_제2외국어명"
    label var E15_12_2A      "수능_결시1 (1교시 응시여부)"
    label var E15_12_2B      "수능_결시2 (2교시 응시여부)"
    label var E15_12_2C      "수능_결시3 (3교시 응시여부)"
    label var E15_12_2D      "수능_결시4 (4교시 응시여부)"
    label var E15_12_2E      "수능_결시5 (5교시 응시여부)"
    label var E15_12_3A      "수능_언어영역_표준점수"
    label var E15_12_3B      "수능_수리영역_표준점수"
    label var E15_12_3C      "수능_외국어영역_표준점수"
    label var E15_12_3D_1    "수능_탐구영역 선택과목1_표준점수"
    label var E15_12_3D_2    "수능_탐구영역 선택과목2_표준점수"
    label var E15_12_3D_3    "수능_탐구영역 선택과목3_표준점수"
    label var E15_12_3D_4    "수능_탐구영역 선택과목4_표준점수"
    label var E15_12_3E      "수능_제2외국어영역_표준점수"
    label var E15_12_4D_1    "수능_탐구영역 선택과목1_등급"
    label var E15_12_4D_2    "수능_탐구영역 선택과목2_등급"
    label var E15_12_4D_3    "수능_탐구영역 선택과목3_등급"
    label var E15_12_4D_4    "수능_탐구영역 선택과목4_등급"
    label var E15_12_4E      "수능_제2외국어영역_등급"
  /*}}}*/
save kels , replace
