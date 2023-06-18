USE mysql;
SHOW tables;
SELECT * FROM user;

CREATE USER alexander@localhost IDENTIFIED BY 'Coder1234_';
SELECT * FROM user;


CREATE USER amarilla@localhost IDENTIFIED BY 'Coder567@';
SELECT * FROM user;

GRANT SELECT ON *.* TO alexander@localhost;

GRANT SELECT, UPDATE, INSERT ON *.* TO amarilla@localhost;

SELECT * FROM user;





SHOW variables LIKE "validate_password%"