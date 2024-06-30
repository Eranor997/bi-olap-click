create user mainuser identified with sha256_password BY 'qwerty';

GRANT ALL ON *.* TO mainuser WITH GRANT OPTION;