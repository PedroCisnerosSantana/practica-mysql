SELECT u.userid, u.username, uh.serverpay, uh.hosting_idhosting FROM users as u JOIN users_has_hosting as uh ON u.userid=uh.users_userid;

DELETE FROM users_has_hosting WHERE users_userid=4;

UPDATE users_has_hosting SET hosting_idhosting=2 WHERE users_userid=4;
