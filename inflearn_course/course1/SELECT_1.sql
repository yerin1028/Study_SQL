---------------단일 테이블---------------

-----전체 커피메뉴 테이블 불러오기-----
SELECT * -- 모든 칼럼 선택
FROM COFFEE_MENU
;

----- 커피메뉴 테이블에서 커피 종류 선택-----
SELECT *
FROM COFFEE_MENU
WHERE KIND='커피'
;

-----두 가지 이상 선택 : IN-----
SELECT *
FROM COFFEE_MENU
WHERE KIND IN ('커피','에이드')
;

----------------------------------------------

-----커피이름, 종류, 가격 칼럼만 선택-----
SELECT COFFEE, KIND, PRICE
FROM COFFEE_MENU
WHERE KIND IN ('커피','에이드')
ORDER BY COFFEE ASC --오름차순 정렬 / DESC : 내림차순
;

----------------------------------------------

-----별칭 부여 : AS-----
SELECT COFFEE AS coffeename, KIND, PRICE
FROM COFFEE_MENU
WHERE KIND IN ('커피','에이드')
ORDER BY coffeename DESC --별칭 기준으로 정렬 가능
;

-----읽는 순서 : FROM → WHERE → SELECT → ORDER BY-----
SELECT COFFEE AS coffeename, KIND, PRICE --3
FROM COFFEE_MENU --1
WHERE cofffeename = '카푸치노' --2
ORDER BY coffeename DESC --4
;

----------------------------------------------

-----데이터 타입 문자열로 변환 : TO_CHAR-----
SELECT TO_CHAR (reg_day,'yyyy.mm.dd hh24:mm:ss')
FROM CUST_INFO
;