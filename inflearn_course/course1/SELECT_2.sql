---------------2개 이상 테이블---------------

-----TABLE JOIN-----
SELECT ORDER_LIST.*, CUST_INFO.EMAIL -- 주문내역 테이블에서 전체 칼럼, 고객정보 테이블에서 이메일 칼럼만 선택
from ORDER_LIST, CUST_INFO -- Join할 두 테이블. from 주테이블, 참조 테이블 
WHERE ORDER_LIST.CUST_ID=CUST_INFO.CUST_ID -- 기준키 칼럼(외래키)
;

----------------------------------------------

-----조회 조건-----
--커피메뉴가 오렌지인 값만--
SELECT ol.*, ci.EMAIL 
from ORDER_LIST ol, CUST_INFO ci -- 테이블명 축약
WHERE ol.CUST_ID=ci.CUST_ID 
and ol.coffee='오렌지' -- 조건
;

--가격이 3000원 이하인 값만
SELECT ol.*, ci.EMAIL 
from ORDER_LIST ol, CUST_INFO ci 
WHERE ol.CUST_ID=ci.CUST_ID 
and ol.PRICE<=3000 -- 조건
;

----------------------------------------------

----참조 테이블 조건-----

--역할이 멤버인 조건--
SELECT ol.*, ci.EMAIL, ci.REG_DAY
from ORDER_LIST ol, CUST_INFO ci 
WHERE ol.CUST_ID=ci.CUST_ID 
and ci.ROLE='MEMBER' -- 역할이 멤버인 값
ORDER BY ci.REG_DAY -- 가입일자 순 정렬
;

-----테이블 3개-----

--음료종류가 에이드인 값 조건--
SELECT ol.*, ci.EMAIL, ci.REG_DAY, cm.kind
from ORDER_LIST ol, CUST_INFO ci, COFFEE_MENU cm -- 커피메뉴 테이블 추가
WHERE ol.CUST_ID=ci.CUST_ID 
and ol.COFFEE_NO=cm.no -- 커피메뉴번호
and cm.KIND='에이드' -- 조회조건
;
