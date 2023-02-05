--CREATE USER OVCOS IDENTIFIED BY OVCOS;
--GRANT CONNECT, RESOURCE TO OVCOS;

DROP TABLE CHLG_COMMENTS; -- 자식테이블 먼저 삭제
DROP TABLE ENTRY_LIST;
DROP TABLE NCHLG_COMMENTS;
DROP TABLE NENTRY_LIST;
DROP TABLE CHALLENGE;
DROP TABLE NORMAL_CHALLENGE;
DROP TABLE CONTEST;
DROP TABLE WITHDRAWAL;
DROP TABLE NOTICE;
DROP TABLE MEMBER;

-- DROP SEQUENCE --
DROP SEQUENCE SEQ_CNTS_NO;
DROP SEQUENCE SEQ_CHLG_NO;
DROP SEQUENCE SEQ_NCHLG_NO;

-- CONTEST SEQUENCE
CREATE SEQUENCE SEQ_CNTS_NO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

-- CHALLENGE SEQUENCE
CREATE SEQUENCE SEQ_CHLG_NO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

-- NORMAL_CHALLENGE SEQUENCE
CREATE SEQUENCE SEQ_NCHLG_NO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

-- CHLG_COMMENTS SEQUENCE
CREATE SEQUENCE SEQ_CHLG_CMN_NO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

-- NCHLG_COMMENTS SEQUENCE
CREATE SEQUENCE SEQ_NCHLG_CMN_NO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

CREATE TABLE MEMBER (
	MEM_ID	VARCHAR(20) CONSTRAINT MEM_ID_PK PRIMARY KEY,
	MEM_PWD	VARCHAR2(20)  NOT NULL,
	MEM_NAME VARCHAR2(15) NOT NULL,
	MEM_NICK VARCHAR2(24) NOT NULL,
	MEM_INTRO VARCHAR2(300),
	MEM_BIRTH DATE,
	MEM_ADMIN_NY CHAR(10) DEFAULT '일반' NOT NULL CONSTRAINT MEM_ADMIN_NY_CK CHECK(MEM_ADMIN_NY IN('일반','관리자')),
	MEM_STATUS VARCHAR2(12) DEFAULT '회원' NOT NULL CONSTRAINT MEM_STATUS_CK CHECK(MEM_STATUS IN('회원','탈퇴','휴먼','일시정지','관리자')),
	MEM_LOC_INFO VARCHAR(200),
	MEM_PUBLIC_NY CHAR(1) DEFAULT 'Y' CONSTRAINT MEM_PUBLIC_NY_CK CHECK(MEM_PUBLIC_NY IN('Y','N')),
	MEM_GOAL_DTN NUMBER DEFAULT 0,
	MEM_CODE_NY	VARCHAR2(20),
	MEM_RPR_CUM	NUMBER DEFAULT 0 NOT NULL,
	MEM_API_TYPE VARCHAR2(30) CONSTRAINT MEM_API_TYPE_CK CHECK(MEM_API_TYPE IN('일반','카카오','네이버','구글')),
	MEM_API_TOKEN VARCHAR2(50),
	MEM_EML	VARCHAR2(100) NOT NULL
);

INSERT INTO MEMBER VALUES('Qdfca12','qwe123','김기현','Kim_ki','우리 같이 열심히 운동해 봐요','19911013',DEFAULT,DEFAULT,NULL,DEFAULT,DEFAULT,NULL,0,'일반', NULL,'Qdfca12@gamil.com');
INSERT INTO MEMBER VALUES('wSDF23','asd214','박창제','parkCH','안녕하세요','19811013',DEFAULT,DEFAULT,NULL,DEFAULT,DEFAULT,NULL,0,'일반', NULL,'wSDF23@gamil.com');
INSERT INTO MEMBER VALUES('cvxzv34','pouih1!','김준식','flag123','안녕하세요','19711213',DEFAULT,'휴먼','서울특별시 광진구',DEFAULT,120,NULL,2,'카카오', 'adsfqwercva','cvxzv34@gamil.com');
INSERT INTO MEMBER VALUES('vdfety1111','jryff3#','존박','jhon','하이요','19970203',DEFAULT,'일시정지','인천 계양구','N',60,'PYJYJYU',3,'네이버', 'AFCETEDF','vdfety1111@gamil.com');
INSERT INTO MEMBER VALUES('admin','admin','관리자','관리자','관리를 빡세게 하자',NULL,'관리자','관리자',NULL,DEFAULT,DEFAULT,NULL,0,'일반', NULL,'ADMIN@gamil.com');


CREATE TABLE CONTEST (
    CNTS_NO NUMBER CONSTRAINT CNTS_NO_PK PRIMARY KEY,
    CNTS_NAME VARCHAR2(60) NOT NULL,
    CNTS_DATE DATE NOT NULL,
    CNTS_URL VARCHAR2(100) NOT NULL
);

INSERT INTO CONTEST VALUES(SEQ_CNTS_NO.NEXTVAL,'신춘마라톤대회',TO_DATE('202302181400','YYYYMMDDHH24MI'),'http://irunman.kr/sub1_1.php?uid=79%27');
INSERT INTO CONTEST VALUES(SEQ_CNTS_NO.NEXTVAL,'코리아오픈레이스',TO_DATE('202303180800','YYYYMMDDHH24MI'),'http://www.koreaopenrace.com/dorun/%27');
INSERT INTO CONTEST VALUES(SEQ_CNTS_NO.NEXTVAL,'서울마라톤',TO_DATE('202303190800','YYYYMMDDHH24MI'),'https://seoul-marathon.com/%27');
INSERT INTO CONTEST VALUES(SEQ_CNTS_NO.NEXTVAL,'서울신문하프마라톤',TO_DATE('202305200820','YYYYMMDDHH24MI'),'https://marathon.seoul.co.kr/%27');
INSERT INTO CONTEST VALUES(SEQ_CNTS_NO.NEXTVAL,'JTBC마라톤',TO_DATE('202311050900','YYYYMMDDHH24MI'),'https://marathon.jtbc.com/%27'); --시간이 안나온 경우는..?

CREATE TABLE CHALLENGE (
    CHLG_NO NUMBER CONSTRAINT CHLG_NO_PK PRIMARY KEY, -- 데이터 삽입할때 시퀀스로 값 인가
	CHLG_TITLE VARCHAR2(60) NOT NULL,
	CHLG_ENROLL_DATE DATE DEFAULT SYSDATE NOT NULL, -- 데이터 삽입이 이뤄질때 시간
	CHLG_DATE DATE NOT NULL,
    CHLG_TIME TIME NOT NULL,
    CHLG_MAX NUMBER NOT NULL,
	CHLG_RPR_NY CHAR(1) DEFAULT 'N' NOT NULL CONSTRAINT CHLG_RPR_NY_CK CHECK(CHLG_RPR_NY IN('N','Y')),
    CHLG_RPR_DATE DATE,
    CHLG_RPR_ID VARCHAR2(20) CONSTRAINT CHLG_RPR_ID_FK REFERENCES MEMBER(MEM_ID) ON DELETE CASCADE,
    MATCH_CNTS_NO NUMBER CONSTRAINT MATCH_CNTS_NO_FK REFERENCES CONTEST(CNTS_NO) ON DELETE CASCADE,
    MATCH_CHLG_ID VARCHAR2(20) NOT NULL CONSTRAINT MATCH_CHLG_ID_FK REFERENCES MEMBER(MEM_ID) ON DELETE CASCADE
);

--INSERT INTO CHALLENGE VALUES(SEQ_CHLG_NO.NEXTVAL,'대회','고깃덩이하늘날다',DEFAULT,TO_DATE('202302181300','YYYYMMDDHH24MI'),'Y',);


CREATE TABLE NORMAL_CHALLENGE (
    NCHLG_NO NUMBER CONSTRAINT NCHLG_NO_PK PRIMARY KEY, -- 데이터 삽입할때 시퀀스로 값 인가
	NCHLG_TITLE VARCHAR2(60) NOT NULL,
	NCHLG_ENROLL_DATE DATE DEFAULT SYSDATE NOT NULL, -- 데이터 삽입이 이뤄질때 시간
	NCHLG_DATE DATE NOT NULL,
    NCHLG_TIME TIME NOT NULL,
    NCHLG_LOCATION VARCHAR2(15) NOT NULL CONSTRAINT NCHLG_LOCATION_CK CHECK(NCHLG_LOCATION IN('서울','부산','대구','인천','광주','대전','울산','세종','경기','강원','충북','충남','전북','전남','경북','경남','제주')),
    NCHLG_MAX NUMBER NOT NULL,
	NCHLG_RPR_NY CHAR(1) DEFAULT 'N' NOT NULL CONSTRAINT NCHLG_RPR_NY_CK CHECK(NCHLG_RPR_NY IN('N','Y')),
    NCHLG_RPR_DATE DATE,
    NCHLG_RPR_ID VARCHAR2(20) CONSTRAINT NCHLG_RPR_ID_FK REFERENCES MEMBER(MEM_ID),
    MATCH_NCHLG_ID VARCHAR2(20) NOT NULL CONSTRAINT MATCH_NCHLG_ID_FK REFERENCES MEMBER(MEM_ID) ON DELETE CASCADE
);

CREATE TABLE CHLG_COMMENTS (
    CHLG_CMN_NO NUMBER CONSTRAINT CHLG_CMN_NO_PK PRIMARY KEY, -- 데이터 삽입할때 시퀀스로 값 인가
    CHLG_CMN_DATE DATE DEFAULT SYSDATE NOT NULL,
    CHLG_CMN_CNT VARCHAR2(1500) NOT NULL,
    CHLG_CMN_RPR_NY CHAR(1) DEFAULT 'N' NOT NULL CONSTRAINT CHLG_CMN_RPR_NY_CK CHECK(CHLG_CMN_RPR_NY IN('N','Y')),
    CHLG_CMN_RPR_DATE DATE,
    CHLG_CMN_DEL_NY CHAR(1) DEFAULT 'N' NOT NULL CONSTRAINT CHLG_CMN_DEL_NY_CK CHECK(CHLG_CMN_DEL_NY IN('N','Y')),
    CHLG_CMN_ID VARCHAR2(20) NOT NULL CONSTRAINT CHLG_CMN_ID_FK REFERENCES MEMBER(MEM_ID) ON DELETE CASCADE,
    CHLG_CMN_RPR_ID VARCHAR2(20) CONSTRAINT CHLG_CMN_RPR_ID_FK REFERENCES MEMBER(MEM_ID) ON DELETE CASCADE, -- 미신고의 경우 NULL일 수 있음
    MATCH_CHLG_NO NUMBER NOT NULL CONSTRAINT MATCH_CHLG_NO_FK REFERENCES CHALLENGE(CHLG_NO) ON DELETE CASCADE
);

CREATE TABLE NCHLG_COMMENTS (
    NCHLG_CMN_NO NUMBER CONSTRAINT NCHLG_CMN_NO_PK PRIMARY KEY, -- 데이터 삽입할때 시퀀스로 값 인가
    NCHLG_CMN_DATE DATE DEFAULT SYSDATE NOT NULL,
    NCHLG_CMN_CNT VARCHAR2(1500) NOT NULL,
    NCHLG_CMN_RPR_NY CHAR(1) DEFAULT 'N' NOT NULL CONSTRAINT NCHLG_CMN_RPR_NY_CK CHECK(NCHLG_CMN_RPR_NY IN('N','Y')),
    NCHLG_CMN_RPR_DATE DATE,
    NCHLG_CMN_DEL_NY CHAR(1) DEFAULT 'N' NOT NULL CONSTRAINT NCHLG_CMN_DEL_NY_CK CHECK(NCHLG_CMN_DEL_NY IN('N','Y')),
    NCHLG_CMN_ID VARCHAR2(20) NOT NULL CONSTRAINT NCHLG_CMN_ID_FK REFERENCES MEMBER(MEM_ID) ON DELETE CASCADE,
    NCHLG_CMN_RPR_ID VARCHAR2(20) CONSTRAINT NCHLG_CMN_RPR_ID_FK REFERENCES MEMBER(MEM_ID) ON DELETE CASCADE, -- 미신고의 경우 NULL일 수 있음
    MATCH_NCHLG_NO NUMBER NOT NULL CONSTRAINT MATCH_NCHLG_NO_FK REFERENCES NORMAL_CHALLENGE(NCHLG_NO) ON DELETE CASCADE
);

CREATE TABLE ENTRY_LIST (
    CHLG_NO_INLIST NUMBER NOT NULL CONSTRAINT CHLG_NO_INLIST_FK REFERENCES CHALLENGE(CHLG_NO) ON DELETE CASCADE,
    CHLG_ENTRY_ID VARCHAR2(20) NOT NULL CONSTRAINT CHLG_ENTRY_ID REFERENCES MEMBER(MEM_ID) ON DELETE CASCADE
);

CREATE TABLE NENTRY_LIST (
    NCHLG_NO_INLIST NUMBER NOT NULL CONSTRAINT NCHLG_NO_INLIST_FK REFERENCES NORMAL_CHALLENGE(NCHLG_NO) ON DELETE CASCADE,
    NCHLG_ENTRY_ID VARCHAR2(20) NOT NULL CONSTRAINT NCHLG_ENTRY_ID REFERENCES MEMBER(MEM_ID) ON DELETE CASCADE
);

CREATE TABLE WITHDRAWAL (
    WTH_NO NUMBER NOT NULL CONSTRAINT WTH_NO_CK CHECK(WTH_NO IN(1,2,3,4)), -- JS에서 기본값 1번 설정, 탈퇴한 경우에만 데이터가 추가되므로 NULL인 경우 미존재함.
    WTH_RSN VARCHAR2(150), -- WITH_NO이 4(기타)인 경우에만 탈퇴사유가 작성되므로 NULL 가능
    WTH_DATE DATE DEFAULT SYSDATE NOT NULL,
    WTH_ID VARCHAR2(20) NOT NULL CONSTRAINT WTH_ID_FK REFERENCES MEMBER(MEM_ID) ON DELETE CASCADE
);

CREATE TABLE NOTICE (
    NTC_NO NUMBER NOT NULL,
    NTC_TITLE VARCHAR2(90) NOT NULL,
    NTC_CNT VARCHAR2(4000) NOT NULL,
    NTC_DATE DATE DEFAULT SYSDATE NOT NULL,
    NTC_COUNT NUMBER DEFAULT 0 NOT NULL
);


--MEMBER COMMENT
COMMENT ON COLUMN MEMBER.MEM_ID IS '회원 아이디';
COMMENT ON COLUMN MEMBER.MEM_PWD IS '회원 비밀번호';
COMMENT ON COLUMN MEMBER.MEM_NAME IS '이름';
COMMENT ON COLUMN MEMBER.MEM_NICK IS '닉네임';
COMMENT ON COLUMN MEMBER.MEM_INTRO IS '자기소개 글';
COMMENT ON COLUMN MEMBER.MEM_BIRTH IS '생년월일';
COMMENT ON COLUMN MEMBER.MEM_ADMIN_NY IS '관리자/회원';
COMMENT ON COLUMN MEMBER.MEM_STATUS IS '회원상태';
COMMENT ON COLUMN MEMBER.MEM_LOC_INFO IS '위치정보';
COMMENT ON COLUMN MEMBER.MEM_PUBLIC_NY IS '마이페이지 공개여부';
COMMENT ON COLUMN MEMBER.MEM_GOAL_DTN IS '목표거리';
COMMENT ON COLUMN MEMBER.MEM_CODE_NY IS '인증코드';
COMMENT ON COLUMN MEMBER.MEM_RPR_CUM IS '누적 신고수';
COMMENT ON COLUMN MEMBER.MEM_API_TYPE IS '소셜종류';
COMMENT ON COLUMN MEMBER.MEM_API_TOKEN IS '토큰 데이터';
COMMENT ON COLUMN MEMBER.MEM_EML IS '이메일';

COMMENT ON COLUMN CHALLENGE.CHLG_NO IS '챌린지번호';
COMMENT ON COLUMN CHALLENGE.CHLG_TITLE IS '챌린지명';
COMMENT ON COLUMN CHALLENGE.CHLG_ENROLL_DATE IS '등록일자';
COMMENT ON COLUMN CHALLENGE.CHLG_DATE IS '모이는날짜';
COMMENT ON COLUMN CHALLENGE.CHLG_TIME IS '모이는시간';
COMMENT ON COLUMN CHALLENGE.MATCH_CNTS_NO IS '연결된대회번호';
COMMENT ON COLUMN CHALLENGE.CHLG_LOCATION IS '지역선택';
COMMENT ON COLUMN CHALLENGE.CHLG_MAX IS '최대참여인원';
COMMENT ON COLUMN CHALLENGE.CHLG_RPR_ID IS '신고자아이디';
COMMENT ON COLUMN CHALLENGE.CHLG_RPR_NY IS '신고여부';
COMMENT ON COLUMN CHALLENGE.CHLG_RPR_DATE IS '신고시간';
COMMENT ON COLUMN CHALLENGE.MATCH_CHLG_ID IS '등록자아이디';

COMMENT ON COLUMN NORMAL_CHALLENGE.NCHLG_NO IS '챌린지번호';
COMMENT ON COLUMN NORMAL_CHALLENGE.NCHLG_TITLE IS '챌린지명';
COMMENT ON COLUMN NORMAL_CHALLENGE.NCHLG_ENROLL_DATE IS '등록일자';
COMMENT ON COLUMN NORMAL_CHALLENGE.NCHLG_DATE IS '모이는날짜';
COMMENT ON COLUMN NORMAL_CHALLENGE.NCHLG_TIME IS '모이는시간';
COMMENT ON COLUMN NORMAL_CHALLENGE.NCHLG_LOCATION IS '지역선택';
COMMENT ON COLUMN NORMAL_CHALLENGE.NCHLG_MAX IS '최대참여인원';
COMMENT ON COLUMN NORMAL_CHALLENGE.NCHLG_RPR_ID IS '신고자아이디';
COMMENT ON COLUMN NORMAL_CHALLENGE.NCHLG_RPR_NY IS '신고여부';
COMMENT ON COLUMN NORMAL_CHALLENGE.NCHLG_RPR_DATE IS '신고시간';
COMMENT ON COLUMN NORMAL_CHALLENGE.MATCH_NCHLG_ID IS '등록자아이디';

COMMENT ON COLUMN CHLG_COMMENTS.CHLG_CMN_NO IS '댓글번호';
COMMENT ON COLUMN CHLG_COMMENTS.CHLG_CMN_DATE IS '작성일자';
COMMENT ON COLUMN CHLG_COMMENTS.CHLG_CMN_CNT IS '내용';
COMMENT ON COLUMN CHLG_COMMENTS.CHLG_CMN_RPR_NY IS '신고여부';
COMMENT ON COLUMN CHLG_COMMENTS.CHLG_CMN_RPR_DATE IS '신고시간';
COMMENT ON COLUMN CHLG_COMMENTS.CHLG_CMN_DEL_NY IS '댓글삭제여부';
COMMENT ON COLUMN CHLG_COMMENTS.CHLG_CMN_ID IS '작성자아이디';
COMMENT ON COLUMN CHLG_COMMENTS.CHLG_CMN_RPR_ID IS '신고자아이디';
COMMENT ON COLUMN CHLG_COMMENTS.MATCH_CHLG_NO IS '연결된챌린지번호';

COMMENT ON COLUMN NCHLG_COMMENTS.CHLG_CMN_NO IS '댓글번호';
COMMENT ON COLUMN NCHLG_COMMENTS.CHLG_CMN_ID IS '작성자아이디';
COMMENT ON COLUMN NCHLG_COMMENTS.CHLG_CMN_DATE IS '작성일자';
COMMENT ON COLUMN NCHLG_COMMENTS.CHLG_CMN_CNT IS '내용';
COMMENT ON COLUMN NCHLG_COMMENTS.CHLG_CMN_RPR_ID IS '신고자아이디';
COMMENT ON COLUMN NCHLG_COMMENTS.CHLG_CMN_RPR_NY IS '신고여부';
COMMENT ON COLUMN NCHLG_COMMENTS.CHLG_CMN_RPR_DATE IS '신고시간';
COMMENT ON COLUMN NCHLG_COMMENTS.CHLG_CMN_DEL_NY IS '댓글삭제여부';
COMMENT ON COLUMN NCHLG_COMMENTS.MATCH_NCHLG_NO IS '연결된챌린지번호';

COMMENT ON COLUMN CONTEST.CNTS_NO IS '대회번호';
COMMENT ON COLUMN CONTEST.CNTS_NAME IS '대회명';
COMMENT ON COLUMN CONTEST.CNTS_DATE IS '대회날짜';
COMMENT ON COLUMN CONTEST.CNTS_URL IS '대회사이트주소';

COMMENT ON COLUMN WITHDRAWAL.WTH_NO IS '탈퇴사유';
COMMENT ON COLUMN WITHDRAWAL.WTH_RSN IS '기타입력란';
COMMENT ON COLUMN WITHDRAWAL.WTH_DATE IS '탈퇴일자';
COMMENT ON COLUMN WITHDRAWAL.WTH_ID IS '회원아이디';

COMMENT ON COLUMN NOTICE.NTC_NO IS '공지번호';
COMMENT ON COLUMN NOTICE.NTC_TITLE IS '공지제목';
COMMENT ON COLUMN NOTICE.NTC_CNT IS '공지내용';
COMMENT ON COLUMN NOTICE.NTC_DATE IS '공지등록일';
COMMENT ON COLUMN NOTICE.NTC_COUNT IS '조회수';


