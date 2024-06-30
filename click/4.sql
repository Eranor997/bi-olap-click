CREATE ROLE readonly;
CREATE ROLE stg;

GRANT SELECT ON *.* TO readonly;
GRANT CREATE TABLE, INSERT, SELECT, SHOW ON stg.* TO stg;

create user user1 identified with sha256_password BY 'user123' DEFAULT ROLE readonly;
create user user2 identified with sha256_password BY '123user' DEFAULT ROLE stg;