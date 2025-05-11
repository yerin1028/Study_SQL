---------------서브 쿼리---------------

-----기본 구문-----
SELECT ol.*, ci.EMAIL, ci.REG_DAY, cm.kind
from ORDER_LIST ol, CUST_INFO ci, COFFEE_MENU cm -- 커피메뉴 테이블 추가
WHERE ol.CUST_ID=ci.CUST_ID 
and ol.COFFEE_NO=cm.no -- 커피메뉴번호
;

-----스칼라 서브 쿼리-----
SELECT ol.*, 
    (select ci.EMAIL 
    from CUST_INFO ci 
    WHERE ol.CUST_ID = ci.CUST_ID) as EMAIL,
    cm.kind
from ORDER_LIST ol, COFFEE_MENU cm
WHERE 1=1
and ol.COFFEE_NO=cm.no 
;

-----from 절에 서브 추가-----
SELECT ol.*, 
    (select ci.EMAIL 
    from CUST_INFO ci 
    WHERE ol.CUST_ID = ci.CUST_ID) as EMAIL,
    cm.kind
from ORDER_LIST ol, 
    (SELECT * 
    from COFFEE_MENU 
    WHERE kind='에이드') cm
WHERE 1=1
and ol.COFFEE_NO=cm.no 
;

--SELECT절에 서브쿼리 추가(같은 내용)--
SELECT ol.* ,
    (SELECT ci.EMAIL 
    from CUST_INFO ci
    WHERE ol.CUST_ID = ci.CUST_ID) as EMAIL,
    (SELECT x.kind
    from COFFEE_MENU x 
    WHERE ol.COFFEE_NO = x.no) as kind
FROM ORDER_LIST ol
WHERE 1=1
and (SELECT kind
    from COFFEE_MENU cm
    WHERE kind='에이드'
    AND ol.COFFEE_NO=cm.no) = '에이드'
;

----------------------------------------------