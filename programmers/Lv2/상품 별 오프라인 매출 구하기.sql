-- PRODUCT 테이블과 OFFLINE_SALE 테이블에서 
-- 상품코드 별 매출액(판매가 * 판매량) 합계를 출력하는 SQL문을 작성해주세요. 
-- 결과는 매출액을 기준으로 내림차순 정렬해주시고 
-- 매출액이 같다면 상품코드를 기준으로 오름차순 정렬해주세요.

SELECT 
    P.PRODUCT_CODE, 
    SUM(P.PRICE * OS.SALES_AMOUNT) AS SALES
    
FROM PRODUCT P
JOIN OFFLINE_SALE OS -- 두 테이블 조인
    ON P.PRODUCT_ID = OS.PRODUCT_ID -- 조인 키
    
GROUP BY P.PRODUCT_CODE

ORDER BY SALES DESC, P.PRODUCT_CODE ASC
;