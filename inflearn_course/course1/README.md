# course1 : 개발자를 위한 ORACLE 입문 첫걸음

<br>

## **📺 강의 사이트**
[인프런 강의 : 개발자를 위한 ORACLE 입문 첫걸음](https://www.inflearn.com/course/%EA%B0%9C%EB%B0%9C%EC%9E%90-%EC%98%A4%EB%9D%BC%ED%81%B4-%EC%B2%AB%EA%B1%B8%EC%9D%8C/dashboard)

<br>

## **📄 내용**
### 1. CREATE - 테이블 생성

- **`CREATE`**
    
    ```sql
    CREATE TABLE 테이블명 (
     no number GENERATED AS IDENTITY , -- 자동으로 숫자 증가
     칼럼명 칼럼형태 NOT NULL , 
     CONSTRAINT pk_테이블명 PRIMARY KEY(기본키로 설정할 칼럼명) -- 기본키
    )
    ;
    ```

    - `VARCHAR2` : 가변길이 문자형
    - `VARCHAR` : 고정길이 문자형
    - `NUMBER` : 숫자형
    - `DATE` : 날짜형
    

- **`CONSTRAINT`** : 제약조건 생성
    - `ADD CONSTRAINT` : 이미 만들어진 테이블에 제약조건 생성
- **`ALTER`** : 수정
- **`UNIQUE`** : 중복 방지
- **`FOREIGN KEY`** : 다른 테이블과 관계 연결
- **`REFERENCES`**
    ```sql
    REFERENCES 참조할 테이블명(참조할 컬럼명)
    ```

<br>

### 2. INSERT - 데이터 생성

- **`INSERT`**
    
    ```sql
    INSERT INTO 테이블명(칼럼1, 칼럼2, 칼럼3)
    VALUES ('칼럼1 값','칼럼2 값',칼럼3값);
    ```
    - 문자형(VARCHAR2) : ‘값’
    - 숫자형(NUMBER) : 값

- **`COMMIT`** : 변경 사항 저장
- **`ROLLBACK`** : 아직 커밋하지 않은 변경 사항 취소

<br>

### 3. SELECT - 데이터 조회

- **`SELECT`** 

```sql
SELECT *
FROM 테이블명
WHERE 조건
ORDER BY 테이블명 -- 해당 테이블 기준 정렬
;
```

- `select *` : 모든 칼럼 선택
- `select 칼럼명` : 해당 칼럼 선택


**`WHERE`**

- `where kind = ‘값’` : 해당 값 선택
- `where kind in (’값1’,’값2’)`  : 여러 값 선택


**`ORDER BY`** 

- `ASC` : 오름차순 정렬. 기본값
- `DESC` : 내림차순 정렬


- **2개 이상 테이블**

```sql
SELECT 테이블1.*, 테이블2.* 
from 테이블1, 테이블2
WHERE 테이블1.기본키=테이블2.외래키
and 조건
;
```


- **서브 쿼리**
    - 하나의 SQL문안에 포함되어 있는 또 다른 SQL문
    
    > **SQL문에서 서브쿼리가 사용이 가능한 곳**
    > 
    > - SELECT 절
    > - FROM 절
    > - WHERE 절
    > - HAVING 절
    > - ORDER BY 절
    > - INSERT문의 VALUES 절
    > - UPDATE문의 SET 절
    
    ```sql
    SELECT 주테이블.*, 
        (select 참조테이블1.*
        from 참조테이블1 
        WHERE 주테이블.기본키 = 참조테이블.외래키)
    from 주테이블, 참조테이블2
    WHERE 1=1
    ;
    ```
    