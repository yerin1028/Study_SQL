-- FOOD_FACTORY 테이블에서 강원도에 위치한 식품공장의 공장 ID, 공장 이름, 주소를 조회하는 SQL문을 작성
-- 이때 결과는 공장 ID를 기준으로 오름차순 정렬

SELECT FF.FACTORY_ID, 
    FF.FACTORY_NAME, 
    FF.ADDRESS

FROM FOOD_FACTORY FF

WHERE FF.ADDRESS LIKE '강원도%' -- LIKE 'oo%' : oo으로 시작하는 값

ORDER BY FF.FACTORY_ID
;