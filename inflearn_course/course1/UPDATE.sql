-----------------이름, 가격 수정----------------

UPDATE order_list
set name = '홍길성형', --ID2 홍길성 -> 홍길성형
     price = 3300 -- 가격 -> 3300
WHERE CUST_ID = 'ID2'
;

-- 수정 전 후로 확인
SELECT *
FROM ORDER_LIST
where CUST_ID = 'ID2'
;

-----------------서브쿼리 사용-------------------

UPDATE order_list ol
set name =
 (select x.name FROM CUST_INFO x
  WHERE x.CUST_ID = ol.CUST_ID)
WHERE REG_DAY > SYSDATE-100
;

-- 2개
UPDATE order_list ol
set (NAME, EMAIL) =
 (select x.NAME, x.EMAIL
  FROM CUST_INFO x
  WHERE x.CUST_ID = ol.CUST_ID)
WHERE REG_DAY > SYSDATE-100
;

-- 확인
SELECT *
FROM ORDER_LIST
WHERE REG_DAY > SYSDATE-100
;