-- 상반기 아이스크림 총주문량이 3,000보다 높으면서 
-- 아이스크림의 주 성분이 과일인 아이스크림의 맛을 
-- 총주문량이 큰 순서대로 조회하는 SQL 문을 작성

SELECT II.FLAVOR -- 아이스크림의 맛만 출력

FROM ICECREAM_INFO II 
JOIN FIRST_HALF FH  -- 조인하기
ON II.FLAVOR = FH.FLAVOR -- 조인 기준키
  
WHERE FH.TOTAL_ORDER > 3000
AND II.INGREDIENT_TYPE = 'fruit_based'

ORDER BY FH.TOTAL_ORDER DESC
;