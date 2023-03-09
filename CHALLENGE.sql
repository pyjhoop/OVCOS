SELECT 
       COUNT(*) COUNT
  FROM NENTRY_LIST
  JOIN NORMAL_CHALLENGE ON (NOR_CHLG_NO = NCHLG_NO_INLIST)
 WHERE NCHLG_ENTRY_ID = ?
   AND NOR_CHLG_DATE > SYSDATE;

SELECT * FROM CONTEST_CHALLENGE;

SELECT 
       CNTS_CHLG_TITLE
     , ENROLL_DATE
     , CNTS_CHLG_DATE
     , CNTS_CHLG_MAX
     , CNTS_CHLG_ID
     , CNTS_NAME
  FROM CONTEST_CHALLENGE C
  JOIN CONTEST USING (CNTS_NO)
  JOIN ENTRY_LIST ON (CHLG_NO_INLIST = CNTS_NO)
 WHERE
       CHLG_ENTRY_ID = 'Qdfca12'
   AND C.DEL_STATUS = 'N'
   AND RPR_STATUS = 'N';
   
SELECT * FROM NORMAL_CHALLENGE;   
   
SELECT 
       NOR_CHLG_TITLE
     , ENROLL_DATE
     , NOR_CHLG_DATE
     , NOR_CHLG_MAX
     , NOR_CHLG_ID
     , LOCAL_NAME
  FROM NORMAL_CHALLENGE
  JOIN LOCAL ON (NOR_CHLG_LOCAL = LOCAL_NO)
  JOIN NENTRY_LIST ON (NCHLG_NO_INLIST = NOR_CHLG_NO)
 WHERE
       NCHLG_ENTRY_ID = 'Qdfca12'
   AND DEL_STATUS = 'N'
   AND RPR_STATUS = 'N';

   
SELECT 
       CNTS_CHLG_NO
     , CNTS_CHLG_TITLE
     , ENROLL_DATE
     , CNTS_CHLG_DATE
     , CNTS_CHLG_MAX
     , CNTS_CHLG_ID
     , CNTS_NAME
     , (SELECT 
               COUNT(CHLG_ENTRY_ID)
          FROM ENTRY_LIST 
         WHERE CHLG_NO_INLIST = CNTS_CHLG_NO) COUNT
  FROM CONTEST_CHALLENGE C
  JOIN CONTEST USING (CNTS_NO)
 WHERE
       C.DEL_STATUS = 'N'
   AND RPR_STATUS = 'N'
   AND CNTS_NO = 1;
   

SELECT 
       CNTS_NO
     , CNTS_NAME
     , CNTS_DATE
     , CNTS_URL
  FROM CONTEST;
  
SELECT
       LOCAL_NO
     , LOCAL_NAME
  FROM LOCAL;

SELECT * FROM NORMAL_CHALLENGE;

SELECT 
       NOR_CHLG_NO
     , NOR_CHLG_TITLE
     , ENROLL_DATE
     , NOR_CHLG_DATE
     , NOR_CHLG_MAX
     , NOR_CHLG_ID
     , LOCAL_NAME
     , (SELECT 
               COUNT(NCHLG_ENTRY_ID)
          FROM NENTRY_LIST 
         WHERE NCHLG_NO_INLIST = NOR_CHLG_NO) COUNT
  FROM NORMAL_CHALLENGE N
  JOIN LOCAL ON (NOR_CHLG_LOCAL = LOCAL_NO)
 WHERE
       N.DEL_STATUS = 'N'
   AND RPR_STATUS = 'N'
   AND LOCAL_NO = '1';
   
SELECT 
       NOR_CHLG_NO
     , NOR_CHLG_TITLE
     , ENROLL_DATE
     , NOR_CHLG_DATE
     , NOR_CHLG_MAX
     , NOR_CHLG_ID
     , LOCAL_NAME
     , (SELECT 
               COUNT(NCHLG_ENTRY_ID)
          FROM NENTRY_LIST 
         WHERE NCHLG_NO_INLIST = NOR_CHLG_NO) COUNT
  FROM NORMAL_CHALLENGE N
  JOIN LOCAL ON (NOR_CHLG_LOCAL = LOCAL_NO)
 WHERE
       N.DEL_STATUS = 'N'
   AND RPR_STATUS = 'N';


SELECT * FROM CONTEST;
SELECT * FROM UPLOAD;

INSERT
  INTO CONTEST
     (
       CNTS_NO
     , CNTS_NAME
     , CNTS_DATE
     , CNTS_URL
     , DEL_STATUS
     )
VALUES
     (
       SEQ_CNTS_NO.NEXTVAL
     , ?
     , SYSDATE
     , ?
     , DEFAULT
     );

INSERT
  INTO UPLOAD
     (
       UPL_ID
     , UPL_MENU
     , UPL_NO
     , ORIGIN_NAME
     , CHANGE_NAME
     , VER_STATUS
     , DEL_STATUS
     )
VALUES
     (
       ?
     , ?
     , SEQ_CNTS_NO.CURRVAL
     , ?
     , ?
     , DEFAULT
     , DEFAULT
     );   


SELECT 
       CNTS_NO
     , CNTS_NAME
     , CNTS_DATE
     , CNTS_URL
     , CHANGE_NAME
  FROM CONTEST
  JOIN UPLOAD ON (CNTS_NO = UPL_NO);
  
SELECT 
       CNTS_NO
     , CNTS_NAME
     , CNTS_DATE
     , CNTS_URL
     , CHANGE_NAME
  FROM CONTEST C
  JOIN UPLOAD ON (CNTS_NO = UPL_NO)
 WHERE 
       C.DEL_STATUS = 'N'
 ORDER
    BY CNTS_DATE;
  
DELETE CONTEST;

UPDATE
       CONTEST
   SET DEL_STATUS = 'Y'
 WHERE CNTS_NO = ?;

SELECT * FROM CONTEST_CHALLENGE;

INSERT
  INTO CONTEST_CHALLENGE
     (
       CNTS_CHLG_NO
     , CNTS_CHLG_TITLE
     , CNTS_CHLG_CONTENT
     , ENROLL_DATE
     , CNTS_CHLG_DATE
     , CNTS_CHLG_MAX
     , CNTS_CHLG_ID
     , CNTS_NO
     )
VALUES
     (
       SEQ_CHLG_NO.NEXTVAL
     , ?
     , ?
     , SYSDATE
     , ?
     , ?
     , ?
     , (SELECT CNTS_NO FROM CONTEST WHERE CNTS_NAME = ?)
     );

SELECT CNTS_NO 
FROM CONTEST
WHERE CNTS_NAME = '�׽�Ʈ111';


SELECT 
       CNTS_NO
     , CNTS_NAME
     , CNTS_DATE
     , CNTS_URL
     , CHANGE_NAME
  FROM CONTEST 
  JOIN UPLOAD ON (CNTS_NO = UPL_NO)
 WHERE 
       CNTS_NO = 6;



SELECT 
       CNTS_CHLG_NO
     , CNTS_CHLG_TITLE
     , CNTS_CHLG_CONTENT
     , ENROLL_DATE
     , CNTS_CHLG_DATE
     , CNTS_CHLG_MAX
     , CNTS_CHLG_ID
     , CNTS_NAME
     , CHANGE_NAME
     , (SELECT 
               COUNT(CHLG_ENTRY_ID)
          FROM ENTRY_LIST 
         WHERE CHLG_NO_INLIST = CNTS_CHLG_NO) COUNT
  FROM CONTEST_CHALLENGE C
  JOIN CONTEST USING (CNTS_NO)
  LEFT JOIN UPLOAD ON (CNTS_CHLG_NO = UPL_NO)
 WHERE
       C.DEL_STATUS = 'N'
   AND C.RPR_STATUS = 'N'
   AND CNTS_NO = ?
   AND CNTS_CHLG_NO = ?;


UPDATE
       CONTEST_CHALLENGE
   SET DEL_STATUS = 'Y'
 WHERE CNTS_CHLG_NO = 54;



INSERT
  INTO ENTRY_LIST
     (
       CHLG_NO_INLIST
     , CHLG_ENTRY_ID
     )
VALUES
     (
       SEQ_CHLG_NO.CURRVAL
     , ?
     );

SELECT
       CHLG_NO_INLIST
     , MEM_NICK
     , CHLG_ENTRY_ID
  FROM ENTRY_LIST
  JOIN MEMBER ON (CHLG_ENTRY_ID = MEM_ID)
 WHERE CHLG_NO_INLIST = 78;


DELETE
  FROM ENTRY_LIST
 WHERE CHLG_ENTRY_ID = 'Qdfca12'
   AND CHLG_NO_INLIST = 78;

SELECT
       CHLG_NO_INLIST
     , CHLG_ENTRY_ID
  FROM ENTRY_LIST
 WHERE CHLG_NO_INLIST = ?
   AND CHLG_ENTRY_ID = ?;


		SELECT 
		       CNTS_CHLG_NO
		     , CNTS_CHLG_TITLE
		     , CNTS_CHLG_CONTENT
		     , ENROLL_DATE
		     , CNTS_CHLG_DATE
		     , CNTS_CHLG_MAX
		     , CNTS_CHLG_ID
		     , CNTS_NAME
		     , CNTS_NO
             , CHANGE_NAME
		  FROM CONTEST_CHALLENGE C
		  JOIN CONTEST T USING (CNTS_NO)
		  JOIN ENTRY_LIST E ON (CHLG_NO_INLIST = CNTS_CHLG_NO)
          LEFT 
          JOIN UPLOAD U ON (CNTS_CHLG_NO = UPL_NO)
		 WHERE
		       E.CHLG_ENTRY_ID = 'admin'
		   AND C.DEL_STATUS = 'N'
		   AND C.RPR_STATUS = 'N';



		SELECT 
		       CNTS_CHLG_NO
		     , CNTS_CHLG_TITLE
		     , CNTS_CHLG_CONTENT
		     , ENROLL_DATE
		     , CNTS_CHLG_DATE
		     , CNTS_CHLG_MAX
		     , CNTS_CHLG_ID
		     , CNTS_NAME
		     , CHANGE_NAME
		     , (SELECT 
		               COUNT(CHLG_ENTRY_ID)
		          FROM ENTRY_LIST 
		         WHERE CHLG_NO_INLIST = CNTS_CHLG_NO) COUNT
		  FROM CONTEST_CHALLENGE C
		  JOIN CONTEST USING (CNTS_NO)
		  LEFT JOIN UPLOAD ON (CNTS_CHLG_NO = UPL_NO)
		 WHERE
		       C.DEL_STATUS = 'N'
		   AND C.RPR_STATUS = 'N'
		   AND CNTS_NO = 6
           AND CNTS_CHLG_DATE > SYSDATE
		 ORDER
		    BY 1 DESC;
   
   
   		SELECT 
		       CNTS_NO
		     , CNTS_NAME
		     , CNTS_DATE
		     , CNTS_URL
		     , CHANGE_NAME
		  FROM CONTEST C
		  JOIN UPLOAD ON (CNTS_NO = UPL_NO)
		 WHERE 
		       C.DEL_STATUS = 'N'
           AND CNTS_DATE > SYSDATE
		 ORDER
		    BY CNTS_DATE;
   
INSERT
  INTO NORMAL_CHALLENGE
     (
       NOR_CHLG_NO
     , NOR_CHLG_TITLE
     , NOR_CHLG_CONTENT
     , ENROLL_DATE
     , NOR_CHLG_DATE
     , NOR_CHLG_MAX
     , NOR_CHLG_ID
     , NOR_CHLG_LOCAL
     )
VALUES
     (
       SEQ_NCHLG_NO.NEXTVAL
     , ?
     , ?
     , SYSDATE
     , TO_DATE(?,'YYYYMMDDHH24MI')
     , ?
     , ?
     , ?
     );
     
     
INSERT
  INTO ENTRY_LIST
     (
       CHLG_NO_INLIST
     , CHLG_ENTRY_ID
     )
VALUES
     (
       SEQ_CHLG_NO.CURRVAL
     , ?
     );
     
INSERT
  INTO NENTRY_LIST
     (
       NCHLG_NO_INLIST
     , NCHLG_ENTRY_ID
     )
VALUES
     (
       SEQ_NCHLG_NO.CURRVAL
     , ?
     )     ;
     
     
		SELECT 
		       NOR_CHLG_NO
		     , NOR_CHLG_TITLE
             , NOR_CHLG_CONTENT
		     , ENROLL_DATE
		     , NOR_CHLG_DATE
		     , NOR_CHLG_MAX
		     , NOR_CHLG_ID
		     , LOCAL_NAME
             , CHANGE_NAME
		     , (SELECT 
		               COUNT(NCHLG_ENTRY_ID)
		          FROM NENTRY_LIST 
		         WHERE NCHLG_NO_INLIST = NOR_CHLG_NO) COUNT
		  FROM NORMAL_CHALLENGE N
		  JOIN LOCAL ON (NOR_CHLG_LOCAL = LOCAL_NO)
          JOIN UPLOAD ON (NOR_CHLG_NO = UPL_NO)
		 WHERE
		       N.DEL_STATUS = 'N'
		   AND N.RPR_STATUS = 'N';
           
           SELECT * FROM NORMAL_CHALLENGE;
    
    
    		SELECT
		       NCHLG_NO_INLIST
		     , NCHLG_ENTRY_ID
		     , MEM_NICK
		  FROM NENTRY_LIST
		  JOIN MEMBER ON (NCHLG_ENTRY_ID = MEM_ID)
		 WHERE NCHLG_NO_INLIST = ?;
         
         		UPDATE
	       NORMAL_CHALLENGE
	   SET DEL_STATUS = 'Y'
	 WHERE NOR_CHLG_NO = ?;
    
    
    
    
    
    		SELECT 
		       NOR_CHLG_NO
		     , NOR_CHLG_TITLE
             , NOR_CHLG_CONTENT
		     , ENROLL_DATE
		     , NOR_CHLG_DATE
		     , NOR_CHLG_MAX
		     , NOR_CHLG_ID
		     , LOCAL_NAME
             , CHANGE_NAME
		     , (SELECT 
		               COUNT(NCHLG_ENTRY_ID)
		          FROM NENTRY_LIST 
		         WHERE NCHLG_NO_INLIST = NOR_CHLG_NO) COUNT
		  FROM NORMAL_CHALLENGE N
		  JOIN LOCAL ON (NOR_CHLG_LOCAL = LOCAL_NO)
          JOIN UPLOAD ON (NOR_CHLG_NO = UPL_NO)
		 WHERE
		       N.DEL_STATUS = 'N'
		   AND N.RPR_STATUS = 'N'
		   AND NOR_CHLG_DATE > SYSDATE
           AND NOR_CHLG_LOCAL = 4
		 ORDER
		    BY 1 DESC;
    
    		SELECT 
		       NOR_CHLG_NO
		     , NOR_CHLG_TITLE
             , NOR_CHLG_CONTENT
		     , ENROLL_DATE
		     , NOR_CHLG_DATE
		     , NOR_CHLG_MAX
		     , NOR_CHLG_ID
		     , LOCAL_NAME
             , CHANGE_NAME
		     , (SELECT 
		               COUNT(NCHLG_ENTRY_ID)
		          FROM NENTRY_LIST 
		         WHERE NCHLG_NO_INLIST = NOR_CHLG_NO) COUNT
		  FROM NORMAL_CHALLENGE N
		  JOIN LOCAL ON (NOR_CHLG_LOCAL = LOCAL_NO)
          JOIN UPLOAD ON (NOR_CHLG_NO = UPL_NO)
		 WHERE
		       N.DEL_STATUS = 'N'
		   AND N.RPR_STATUS = 'N'
		   AND NOR_CHLG_DATE > SYSDATE
		 ORDER
		    BY 1 DESC;
    
    
    
    
    
    
    
    
    
    
    		SELECT 
		       NOR_CHLG_NO
		     , NOR_CHLG_TITLE
             , NOR_CHLG_CONTENT
		     , ENROLL_DATE
		     , NOR_CHLG_DATE
		     , NOR_CHLG_MAX
		     , NOR_CHLG_ID
		     , LOCAL_NAME
             , CHANGE_NAME
		     , (SELECT 
		               COUNT(NCHLG_ENTRY_ID)
		          FROM NENTRY_LIST 
		         WHERE NCHLG_NO_INLIST = NOR_CHLG_NO) COUNT
		  FROM NORMAL_CHALLENGE N
		  JOIN LOCAL ON (NOR_CHLG_LOCAL = LOCAL_NO)
          JOIN UPLOAD ON (NOR_CHLG_NO = UPL_NO)
		 WHERE
		       N.DEL_STATUS = 'N'
		   AND N.RPR_STATUS = 'N'
		   AND NOR_CHLG_DATE > SYSDATE
		 ORDER
		    BY 1 DESC;
    
    		SELECT 
		       NOR_CHLG_NO
		     , NOR_CHLG_TITLE
             , NOR_CHLG_CONTENT
		     , ENROLL_DATE
		     , NOR_CHLG_DATE
		     , NOR_CHLG_MAX
		     , NOR_CHLG_ID
		     , LOCAL_NAME
             , CHANGE_NAME
		     , (SELECT 
		               COUNT(NCHLG_ENTRY_ID)
		          FROM NENTRY_LIST 
		         WHERE NCHLG_NO_INLIST = NOR_CHLG_NO) COUNT
		  FROM NORMAL_CHALLENGE N
		  JOIN LOCAL ON (NOR_CHLG_LOCAL = LOCAL_NO)
          JOIN UPLOAD ON (NOR_CHLG_NO = UPL_NO)
		 WHERE
		       N.DEL_STATUS = 'N'
		   AND N.RPR_STATUS = 'N'
		   AND LOCAL_NO = 1
		   AND NOR_CHLG_DATE > SYSDATE
		 ORDER
		    BY 1 DESC;
    
    
    		SELECT 
		       CNTS_CHLG_NO
		     , CNTS_CHLG_TITLE
		     , CNTS_CHLG_CONTENT
		     , ENROLL_DATE
		     , CNTS_CHLG_DATE
		     , CNTS_CHLG_MAX
		     , CNTS_CHLG_ID
		     , CNTS_NAME
		     , CHANGE_NAME
		     , (SELECT 
		               COUNT(CHLG_ENTRY_ID)
		          FROM ENTRY_LIST 
		         WHERE CHLG_NO_INLIST = CNTS_CHLG_NO) COUNT
		  FROM CONTEST_CHALLENGE C
		  JOIN CONTEST USING (CNTS_NO)
		  LEFT JOIN UPLOAD ON (CNTS_CHLG_NO = UPL_NO)
		 WHERE
		       C.DEL_STATUS = 'N'
		   AND C.RPR_STATUS = 'N'
		   AND CNTS_NO = 2
           AND CNTS_CHLG_DATE > SYSDATE
		 ORDER
		    BY 1 DESC;
    
    
 
UPDATE
       CONTEST
   SET DEL_STATUS = 'N'
 WHERE CNTS_NO = 2;   
    
    
    
    
ROLLBACK;


COMMIT;
  