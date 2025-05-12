-- BOOK 테이블에서 2021년에 출판된 '인문' 카테고리에 속하는 도서 리스트를 찾아서 
-- 도서 ID(BOOK_ID), 출판일 (PUBLISHED_DATE)을 출력하는 SQL문을 작성
-- 결과는 출판일을 기준으로 오름차순 정렬

SELECT 
    B.BOOK_ID, 
    TO_CHAR(B.PUBLISHED_DATE, 'YYYY-MM-DD') AS PUBLISHED_DATE -- 데이터 타입 변환

FROM BOOK B

WHERE 
    TO_CHAR(B.PUBLISHED_DATE, 'YYYY') = '2021' -- 연도가 2021년인 값
    AND B.CATEGORY = '인문'

ORDER BY PUBLISHED_DATE ASC
;