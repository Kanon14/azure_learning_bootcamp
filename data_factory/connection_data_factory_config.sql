CREATE USER [examplenameADF] FROM EXTERNAL PROVIDER;
ALTER ROLE db_owner ADD MEMBER [examplenameADF];

SELECT * FROM sys.database_principals WHERE name = 'examplenameADF';

SELECT * FROM sys.database_role_members WHERE member_principal_id = USERID('examplenameADF');
