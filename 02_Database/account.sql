
-- Today Gym ���� ���� ���
CREATE USER togym
IDENTIFIED BY "1234"
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON USERS;

-- Today Gym ���� ���
DROP USER togym;

-- Today Gym ��� ���� ����
GRANT DBA TO togym;

-- Today Gym ��� ���� ȸ��
REVOKE DBA FROM togym;