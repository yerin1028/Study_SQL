-- 잡은 물고기 중 길이가 10cm 이하인 물고기의 수를 출력하는 SQL 문을 작성해주세요.
-- 물고기의 수를 나타내는 컬럼 명은 FISH_COUNT로 해주세요.
-- 단, 잡은 물고기의 길이가 10cm 이하일 경우에는 LENGTH 가 NULL 이며, 
-- LENGTH 에 NULL 만 있는 경우는 없습니다.

SELECT COUNT(ID) AS FISH_COUNT

FROM FISH_INFO 

WHERE LENGTH IS NULL -- 10cm 이하 LENGTH = NULL
;