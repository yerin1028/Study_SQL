---------------커피메뉴 테이블에 데이터 생성---------------
INSERT INTO coffee_menu (coffee, kind, price)
VALUES ('아메리카노','커피',2000);

INSERT INTO coffee_menu (coffee, kind, price)
VALUES ('카페라떼','커피',3000);

INSERT INTO coffee_menu (coffee, kind, price)
VALUES ('카푸치노','커피',3000);

INSERT INTO coffee_menu (coffee, kind, price)
VALUES ('그린티','논커피',3500);

INSERT INTO coffee_menu (coffee, kind, price)
VALUES ('초코라떼','논커피',4000);

INSERT INTO coffee_menu (coffee, kind, price)
VALUES ('파인애플','에이드',3000);

INSERT INTO coffee_menu (coffee, kind, price)
VALUES ('제주한라봉','에이드',3000);

INSERT INTO coffee_menu (coffee, kind, price)
VALUES ('오렌지','에이드',3000);

COMMIT; -- 변경사항 저장
-- rollback : 아직 커밋하지 않은 변경 취소

----------------------------------------------------------

---------------고객정보 테이블에 데이터 생성---------------

INSERT INTO cust_info(cust_id,NAME,email,role)
VALUES('ID1','홍길동','email1@hong.com','MEMBER');

INSERT INTO cust_info(cust_id,NAME,email,role)
VALUES('ID2','홍길성','email2@hong.com','MEMBER');

INSERT INTO cust_info(cust_id,NAME,email,role)
VALUES('ID3','홍길자','email3@hong.com','MEMBER');

INSERT INTO cust_info(cust_id,NAME,email,role)
VALUES('ID4','홍길순','email4@hong.com','MEMBER');

INSERT INTO cust_info(cust_id,NAME,email,role)
VALUES('ID5','홍길선','email5@hong.com','MEMBER');

INSERT INTO cust_info(cust_id,NAME,email,role)
VALUES('ID6','관리자','admin@hong.com','ADMIN');

COMMIT;

----------------------------------------------------------

---------------주문내역 테이블에 데이터 생성---------------

INSERT INTO order_list (coffee_no,coffee,price,cust_id,NAME)
VALUES(21,'아메리카노',2000,'ID1','홍길동');

INSERT INTO order_list (coffee_no,coffee,price,cust_id,NAME)
VALUES(21,'아메리카노',2000,'ID2','홍길성');

INSERT INTO order_list (coffee_no,coffee,price,cust_id,NAME)
VALUES(23,'카푸치노',3000,'ID3','홍길자');

INSERT INTO order_list (coffee_no,coffee,price,cust_id,NAME)
VALUES(23,'카푸치노',3000,'ID3','홍길자');

INSERT INTO order_list (coffee_no,coffee,price,cust_id,NAME)
VALUES(25,'초코라떼',4000,'ID4','홍길순');

INSERT INTO order_list (coffee_no,coffee,price,cust_id,NAME)
VALUES(28,'오렌지',3000,'ID2','홍길성');

INSERT INTO order_list (coffee_no,coffee,price,cust_id,NAME)
VALUES(24,'그린티',3500,'ID3','홍길자');

INSERT INTO order_list (coffee_no,coffee,price,cust_id,NAME)
VALUES(22,'카페라떼',3000,'ID5','홍길선');

COMMIT;
