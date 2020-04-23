CREATE TABLE users
(
  userid INT NOT NULL,
  usermail VARCHAR(100) NOT NULL,
  userpass 16 NOT NULL,
  username VARCHAR(50) NOT NULL,
  userrol VARCHAR NOT NULL,
  PRIMARY KEY (userid)
);

CREATE TABLE hosting
(
  idhosting INT NOT NULL,
  hostingplan INT NOT NULL,
  hostingprice INT NOT NULL,
  hostinglocation INT NOT NULL,
  PRIMARY KEY (idhosting)
);

CREATE TABLE users_has_hosting
(
  serverpay INT NOT NULL,
  userid INT NOT NULL,
  idhosting INT NOT NULL,
  PRIMARY KEY (userid, idhosting),
  FOREIGN KEY (userid) REFERENCES users(userid),
  FOREIGN KEY (idhosting) REFERENCES hosting(idhosting)
);
