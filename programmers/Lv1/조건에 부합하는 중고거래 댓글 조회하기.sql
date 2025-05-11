-- USED_GOODS_BOARD와 USED_GOODS_REPLY 테이블에서 
-- 2022년 10월에 작성된 게시글 제목, 게시글 ID, 댓글 ID, 댓글 작성자 ID, 댓글 내용, 댓글 작성일을 조회하는 SQL문을 작성
-- 결과는 댓글 작성일을 기준으로 오름차순 정렬
-- 댓글 작성일이 같다면 게시글 제목을 기준으로 오름차순 정렬

SELECT B.TITLE, B.BOARD_ID, 
    R.REPLY_ID, R.WRITER_ID, R.CONTENTS,
    TO_CHAR(R.CREATED_DATE, 'YYYY-MM-DD') CREATED_DATE -- 날짜를 'yyyy-mm-dd'형태의 문자열로 변환

FROM USED_GOODS_BOARD B
JOIN USED_GOODS_REPLY R
    ON B.BOARD_ID = R.BOARD_ID

WHERE TO_CHAR(B.CREATED_DATE, 'YYYY-MM-DD') LIKE '2022-10-%' -- LIKE : 2022년 10월에 해당하는 날짜 필터링

ORDER BY 
  R.CREATED_DATE, B.TITLE
;