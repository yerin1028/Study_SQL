-- FISH_INFO 테이블에서 
-- 가장 큰 물고기 10마리의 ID와 길이를 출력하는 SQL 문을 작성해주세요. 
-- 결과는 길이를 기준으로 내림차순 정렬하고, 
-- 길이가 같다면 물고기의 ID에 대해 오름차순 정렬해주세요. 
-- 단, 가장 큰 물고기 10마리 중 길이가 10cm 이하인 경우는 없습니다.
-- ID 컬럼명은 ID, 길이 컬럼명은 LENGTH로 해주세요.
-- 단, 잡은 물고기의 길이가 10cm 이하일 경우에는 LENGTH 가 NULL 이며, 
-- LENGTH 에 NULL 만 있는 경우는 없습니다.

SELECT ID, LENGTH

FROM FISH_INFO

WHERE LENGTH IS NOT NULL

ORDER BY 
    LENGTH DESC, 
    ID ASC

-- ORACLE
FETCH FIRST 10 ROWS ONLY
-- My SQL : LIMIT 10
;