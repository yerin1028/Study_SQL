-- CAR_RENTAL_COMPANY_CAR 테이블에서 
-- '통풍시트', '열선시트', '가죽시트' 중 하나 이상의 옵션이 포함된 자동차가 
-- 자동차 종류 별로 몇 대인지 출력하는 SQL문을 작성해주세요. 
-- 이때 자동차 수에 대한 컬럼명은 CARS로 지정하고, 
-- 결과는 자동차 종류를 기준으로 오름차순 정렬해주세요.

SELECT CAR_TYPE, COUNT(*) AS CARS

FROM CAR_RENTAL_COMPANY_CAR

WHERE 
    OPTIONS LIKE '%통풍시트%'
    OR OPTIONS LIKE '%열선시트%'
    OR OPTIONS LIKE '%가죽시트%'
    
-- = WHERE REGEXP_LIKE(OPTIONS, '통풍시트|열선시트|가죽시트')
-- REGEXP_LIKE(컬럼, 'A|B|C') : 해당 컬럼이 A, B, C 중 하나라도 포함하면 TRUE를 반환

GROUP BY CAR_TYPE

ORDER BY CAR_TYPE
;