-- PRODUCT 테이블에서 
-- 상품 카테고리 코드(PRODUCT_CODE 앞 2자리) 별 상품 개수를 출력하는 SQL문을 작성해주세요. 
-- 결과는 상품 카테고리 코드를 기준으로 오름차순 정렬해주세요.

SELECT 
    -- SUBSTR(칼럼명, M, N) → 해당 칼럼의 M번째부터 N개 문자를 추출 
    SUBSTR(PRODUCT_CODE, 1, 2) AS CATEGORY,
    COUNT(*) AS COUNT
    
FROM PRODUCT

GROUP BY SUBSTR(PRODUCT_CODE, 1, 2) -- GROUP BY 절에서 같은 SUBSTR 사용해야 함

ORDER BY CATEGORY
;