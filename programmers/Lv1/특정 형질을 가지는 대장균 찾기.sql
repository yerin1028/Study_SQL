-- 2번 형질이 보유하지 않으면서 
-- 1번이나 3번 형질을 보유하고 있는 
-- 대장균 개체의 수(COUNT)를 출력하는 SQL 문을 작성해주세요. 
-- 1번과 3번 형질을 모두 보유하고 있는 경우도 1번이나 3번 형질을 보유하고 있는 경우에 포함
-- 형질 : 2진수로 표현됨

-- MY SQL

SELECT COUNT(*) AS COUNT

FROM ECOLI_DATA

WHERE (GENOTYPE & 2) = 0 -- 형질 2번을 보유하지 않는 대장균
AND (
    (GENOTYPE & 1) != 0 -- 형질 1번
    OR (GENOTYPE & 4) != 0 -- 또는 3번을 보유한 대장균
    )
;


-- ORACLE

SELECT COUNT(*) AS COUNT
FROM ECOLI_DATA
WHERE BITAND(GENOTYPE, 2) = 0
AND (
    BITAND(GENOTYPE, 1) != 0
    OR BITAND(GENOTYPE, 4) != 0
);