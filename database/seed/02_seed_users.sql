USE zivo_db;

INSERT INTO users
(
role_id,
first_name,
last_name,
email,
password_hash,
phone_number
)
VALUES
(
2,
'Zivo',
'Store',
'zivostore@gmail.com',
'$2b$12$abcdefghijklmnopqrstuv',
'9876543210'
);