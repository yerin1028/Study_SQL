-- 동물 보호소에 들어온 동물 이름 중, 
-- 이름에 "EL"이 들어가는 개의 아이디와 이름을 조회하는 SQL문을 작성해주세요. 
-- 이때 결과는 이름 순으로 조회해주세요. 
-- 단, 이름의 대소문자는 구분하지 않습니다.

SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS 
WHERE LOWER(NAME) LIKE '%el%'
-- LOWER(NAME) LIKE '%el%': 이름을 소문자로 바꾼 후 'el'이 포함되어 있는지 확인 → 대소문자 구분 없이 검색 가능.
AND ANIMAL_TYPE = 'Dog'
ORDER BY NAME
;