-- user 테이블 삭제
DROP TABLE cm_user;


-- user 테이블 생성
CREATE TABLE cm_user
(
userid VARCHAR2(30) PRIMARY KEY,
email VARCHAR2(30) NOT NULL,
password VARCHAR2(30) NOT NULL
);

