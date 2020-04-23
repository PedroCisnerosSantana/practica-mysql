CREATE VIEW userInfo AS SELECT username, hex(userpass), usermail FROM users WHERE userid <> 1;

SELECT * FROM userInfo
