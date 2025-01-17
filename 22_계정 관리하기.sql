-- 22_계정 관리하기.sql

-- 현재 접속된 계정 보기
SHOW user;

-- 새 계정 생성하기 (권한 있는 계정에서만 실행가능)
CREATE USER testuser IDENTIFIED BY "1234";

-- 사용자 계정 데이터 딕셔너리 뷰
SELECT username, to_char(created, 'MM/DD HH24:MI:SS') FROM all_users;

-- 새로 생성한 계정 권한 주기 (GRANT 권한 TO 계정)
GRANT CREATE SESSION TO testuser; -- 해당 계정에 접속할 수 있는 권한 부여
GRANT CREATE TABLE TO testuser; -- 해당 계정에 테이블 생성 권한 부여
GRANT RESOURCE TO testuser; -- 저장 공간을 사용할 수 있는 권한 부여

-- 계정의 권한 뺏기 (REVOKE 권한 FROM 계정) 
REVOKE RESOURCE FROM testuser;

-- 계쩡 비밀번호 변경하기
ALTER USER testuser IDENTIFIED BY "4321";

-- 계정 삭제하기
DROP USER testuser;






