--------------------커피메뉴 테이블 생성--------------------
CREATE TABLE coffee_menu (
 no number GENERATED AS IDENTITY , -- 자동으로 숫자 증가
 coffee VARCHAR2(100) NOT NULL , -- VARCHAR2 : 가변길이 문자형 / VARCHAR : 고정길이 문자형
 kind VARCHAR2(100) NOT NULL ,
 price number(11) DEFAULT 0 NOT NULL, -- NUMBER : 숫자형
 reg_day date DEFAULT sysdate NOT NULL , -- DATE : 날짜형
 mod_day date DEFAULT sysdate NOT NULL ,
 CONSTRAINT pk_coffee_menu PRIMARY KEY(no) -- 기본키
)
;

----- comment 생성
COMMENT ON TABLE coffee_menu IS '커피/음료 메뉴'; 

-----------------------------------------------------------

--------------------개인정보 테이블 생성--------------------
CREATE TABLE cust_info (
 no number GENERATED AS IDENTITY ,
 cust_id VARCHAR2(100) NOT NULL,
 name VARCHAR2(100) NOT NULL,
 email VARCHAR2(100) NOT NULL,
 role VARCHAR2(100) DEFAULT 'MEMBER' NOT NULL  ,
 reg_day date default sysdate NOT NULL,
 CONSTRAINT pk_cust_info PRIMARY KEY(no)
);

----- comment 생성
COMMENT ON TABLE cust_info IS '고객정보';

----- unique index 생성 : 유일성 제약조건 추가 (중복된 cust_id 값을 막기 위해. 데이터 무결성 유지)
ALTER TABLE cust_info ADD CONSTRAINT idx_cust_info UNIQUE(cust_id); -- ALTER : 수정 / CONSTRAINT : 제약조건
-- 이미 만들어진 테이블에 제약조건을 붙일 때 : ADD CONSTRAINT
-- UNIQUE : 중복 방지

-----------------------------------------------------------

--------------------주문내역 테이블 생성--------------------
CREATE TABLE order_list (
 no number GENERATED AS IDENTITY ,
 coffee_no number(11) NOT NULL,
 coffee VARCHAR2(100) NOT NULL,
 price number(11) NOT NULL,
 cust_id VARCHAR2(100) NOT NULL,
 name VARCHAR2(100) NOT NULL,
 reg_day date default sysdate ,
 CONSTRAINT pk_order_list PRIMARY KEY(no) -- 기본키
);

----- comment 생성
COMMENT ON TABLE order_list IS '주문내역';

----- foreign key 생성
ALTER TABLE order_list
ADD CONSTRAINT fk_coffee_no
FOREIGN KEY (coffee_no) -- FOREIGN KEY : 다른 테이블과 관계 연결
REFERENCES coffee_menu(no); -- REFERENCES 참조할 테이블명(참조할 컬럼명)

ALTER TABLE order_list
ADD CONSTRAINT fk_cust_id
FOREIGN KEY (cust_id) -- FOREIGN KEY : 다른 테이블과 관계 연결
REFERENCES cust_info(cust_id); -- REFERENCES 참조할 테이블명(참조할 컬럼명)