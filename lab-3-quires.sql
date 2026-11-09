DROP ROLE test2;
14:49:32
REVOKE SELECT, UPDATE, DELETE ON TABLE employees FROM test2;
14:49:21
DROP ROLE test2;
14:48:51
DELETE FROM employees WHERE "Num" = 1;
14:48:25
DELETE "Job" = 'Senior' WHERE "Num" = 1;
14:47:52
UPDATE employees DELETE "Job" = 'Senior' WHERE "Num" = 1;
14:47:35
UPDATE employees SET "Job" = 'Senior' WHERE "Num" = 1;
14:46:44
UPDATE employees SET "Job" = "Senior" WHERE "Num" = 1;
14:46:21
GRANT SELECT, UPDATE, DELETE ON TABLE employees TO test2;
14:44:40
GRANT SELECT, UPDATE, DELETE ON TABLE employees TO test1;
14:44:36
CREATE ROLE test2 LOGIN PASSWORD '1111';
14:42:54
RESET ROLE;
14:32:04
UPDATE employees SET "Job" = 'Tester' WHERE "Num" = 5;
13:43:45
DELETE FROM employees WHERE "Num" = 5;
13:42:00
UPDATE employees SET "Job" = 'Tester' WHERE "Num" = 5;
13:40:55
SELECT * FROM employees;
13:39:44
SET ROLE user_readonly;
13:39:00
GRANT bd_editor TO user_readonly;
13:38:04
GRANT SELECT, INSERT, UPDATE ON TABLE employees TO bd_editor;
13:35:11
CREATE ROLE bd_editor;
13:33:05
DROP ROLE test2;
Total rows:
CRLF
Ln 1, Col 1