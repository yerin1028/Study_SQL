-- CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 
-- 대여 시작일이 2022년 9월에 속하는 대여 기록에 대해서 
-- 대여 기간이 30일 이상이면 '장기 대여' 
-- 그렇지 않으면 '단기 대여' 로 표시하는 컬럼(컬럼명: RENT_TYPE)을 추가하여 
-- 대여기록을 출력하는 SQL문을 작성해주세요. 
-- 결과는 대여 기록 ID를 기준으로 내림차순 정렬해주세요.
-- START_DATE와 END_DATE의 경우 예시의 데이트 포맷과 동일해야 정답처리 됩니다.

SELECT 
    HISTORY_ID,
    CAR_ID,
    TO_CHAR(START_DATE, 'YYYY-MM-DD') AS START_DATE, -- 포맷 설정
    TO_CHAR(END_DATE, 'YYYY-MM-DD') AS END_DATE, -- 포맷 설정
   
   CASE -- 대여일수 계산
        WHEN END_DATE - START_DATE >= 29 THEN '장기 대여'  
        ELSE '단기 대여'
    END AS RENT_TYPE
    
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY

WHERE TO_CHAR(START_DATE, 'YYYY-MM') = '2022-09'

ORDER BY HISTORY_ID DESC
;