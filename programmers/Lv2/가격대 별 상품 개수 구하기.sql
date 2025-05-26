-- PRODUCT 테이블에서 만원 단위의 가격대 별로 상품 개수를 출력하는 SQL 문을 작성해주세요. 
-- 이때 컬럼명은 각각 컬럼명은 PRICE_GROUP, PRODUCTS로 지정해주시고 
-- 가격대 정보는 각 구간의 최소금액(10,000원 이상 ~ 20,000 미만인 구간인 경우 10,000)으로 표시
-- 결과는 가격대를 기준으로 오름차순 정렬해주세요.

SELECT 
    FLOOR(PRICE / 10000) * 10000 AS PRICE_GROUP,
    -- 가격을 10,000으로 나눈 후 내림(FLOOR) 후 다시 10,000을 곱하면,
    -- 10,000원 단위의 하한값을 구할 수 있음
    COUNT(*) AS PRODUCTS
    
FROM PRODUCT

GROUP BY FLOOR(PRICE / 10000) * 10000

ORDER BY PRICE_GROUP
;