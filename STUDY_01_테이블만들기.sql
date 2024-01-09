-- table 
-- 데이터 베이스에서 데이터를 저장하는 객체이다.
-- 표 형식을 가지며, 행(row)와 열(column)의 집합 형태이다.

-- 개발 순서 
-- 기획 -> 화면흐름도 작성 -> 유스케이스 설계도 -> 기술설계서 -> URD 클라우드 -> SQL 쿼리 테스트
-- 현재 단계는 SQL 단계로, 그 앞전의 단계는 우선 생략한다.

/*
 Q. SQL, 굳이 해야하나요?
 A. 해야한다. 단순하게 생각해서 건물 짓기와 비슷하다. 
    건물을 짓기전, 우리는 건물 설계도를 그린다. 그 이후엔, 인력들과 부자재들을 구하고
    건물을 짓기 시작하는데 이때 SQL은 건물의 뼈대이다. 이 건물의 뼈대를 우리가 빼고 만들지는 않듯이,
    웹 개발단계에서 SQL은 필수요소이다.
*/


-- TABLE 만들기

-- X
CREATE TABLE TEST_T;

-- O
-- 테스트를 돌릴때는, 기존의 테이블을 삭제 후에 CREATE를 진행해야한다
-- 전체 실행

DROP TABLE TEST_T;
CREATE TABLE TEST_T(
    NO      NUMBER                NOT NULL  PRIMARY KEY,
    ID      VARCHAR2(40 BYTE)     NOT NULL  UNIQUE,
    PW      VARCHAR2(40 BYTE)     NOT NULL,
    NAME    VARCHAR2(50 BYTE)     NOT NULL,
    NICK    VARCHAR2(50 BYTE)     NOT NULL  UNIQUE,
    EMAIL   VARCHAR2(100 BYTE)    NOT NULL,
    PHONE   VARCHAR2(13 BYTE)     NOT NULL,
    ADDRESS VARCHAR2(14 BYTE)   NULL
);

/*
    <데이터 타입>
    1. NUMBER(p,s)  : 정밀도 p, 스케일 s로 표현하는 숫자 방식이다.
        ① 정밀도 p : 1 ~ 38, 최대 유효 숫자 자리수
        ② 스케일 s : -84 ~ 127, 소수점 기준 자리수
        
    2. CHAR(size) : 고정문자 (character)
        ① 글자 수가 고정된 타입 (예시 : 핸드폰 번호, 주민번호 등)
        ② size :  최대 2000 byte
        
    3. VARCHAR2(size) 가변 문자
        ① 글자 수가 고정되지 않은 타입 (예시 : 이름, 이메일, 주소 등)
        ② size : 최대 4000 byte
        
    4. CLOB : 큰 텍스트 타입
    5. DATE : 날짜와 시간을 동시에 표현하는 타입 - 년,월,일,시,분,초
    6. TIMESTAMP    : 날짜와 시간을 동시에 표현하는 타입 - 년,월,일,시,분,초, 마이크로초(백만분의 1초)
*/

/*
    <제약 조건>
    1. NOT NULL     : 필수
    2. UNIQUE       : 중복 불가
    3. PRIMARY KEY  : 기본 키
    4. FOREIGN KEY  : 외래 키
    5. CHECK        : 값의 제한
*/


