-- DOCTOR 테이블에서 진료과가 흉부외과(CS)이거나 일반외과(GS)인 
-- 의사의 이름, 의사ID, 진료과, 고용일자를 조회하는 SQL문을 작성
-- 이때 결과는 고용일자를 기준으로 내림차순 정렬하고, 
-- 고용일자가 같다면 이름을 기준으로 오름차순 정렬

SELECT DR_NAME, 
    DR_ID, 
    MCDP_CD, 
    TO_CHAR(HIRE_YMD,'yyyy-mm-dd') AS HIRE_YMD -- 날짜 형태 변환

FROM DOCTOR 

WHERE MCDP_CD IN ('CS', 'GS') -- IN : 여러 값 조건

ORDER BY HIRE_YMD DESC, DR_NAME ASC
;