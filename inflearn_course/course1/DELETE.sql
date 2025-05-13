-----------------이름, 가격 수정----------------
DELETE FROM ORDER_LIST;

select *
from order_list;

--DELETE 권장 X

-->DELETE된 값 모아두는 테이블 만들기


-- 서브쿼리
DELETE FROM ORDER_LIST
WHERE 1=1
AND ORDER_LIST.CUST_ID = (
    SELECT cust_id FROM CUST_INFO
    WHERE email = 'email4@hong.com'
);

-- 확인
SELECT *
FROM ORDER_LIST
WHERE 1=1
AND CUST_ID = (
    SELECT cust_id FROM CUST_INFO
    WHERE email = 'email4@hong.com'
);