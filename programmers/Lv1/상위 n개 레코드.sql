--동물 보호소에 가장 먼저 들어온 동물의 이름을 조회하는 SQL 문

SELECT NAME

FROM ANIMAL_INS

ORDER BY DATETIME

FETCH FIRST 1 ROWS ONLY 
-- FETCH : 결과 행(Row)의 개수 제한
-- 첫 번째 행만 가져옴
;