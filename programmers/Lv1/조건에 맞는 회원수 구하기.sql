-- USER_INFO 테이블에서 
-- 2021년에 가입한 회원 중 
-- 나이가 20세 이상 29세 이하인 회원이 몇 명인지 출력하는 SQL문을 작성

SELECT COUNT(USER_ID) -- COUNT : 값의 갯수 구하기

FROM USER_INFO

WHERE 
    TO_CHAR(JOINED, 'YYYY') = '2021' -- 가입일에서 연도만 뽑아 2021년인지 확인
    AND AGE BETWEEN 20 AND 29 -- BETWEEN A AND B : A 이상 B 이하 조건
;