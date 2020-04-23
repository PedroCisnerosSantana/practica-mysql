CREATE TABLE users
(
  userid INT IDENTITY NOT NULL,
  usermail VARCHAR(100) NOT NULL,
  userpass BINARY(16) NOT NULL,
  username VARCHAR(50) NOT NULL,
  userrol VARCHAR NOT NULL DEFAULT 'user',
  PRIMARY KEY (userid)
);

CREATE TABLE hosting
(
  idhosting INT NOT NULL,
  hostingplan INT NOT NULL CHECK (hostingplan <> 0),
  hostingprice INT NOT NULL,
  hostinglocation INT NOT NULL,
  PRIMARY KEY (idhosting)
);

CREATE TABLE users_has_hosting
(
  serverpay DATE NOT NULL DEFAULT NOW(),
  userid INT NOT NULL,
  idhosting INT NOT NULL,
  PRIMARY KEY (userid, idhosting),
  FOREIGN KEY (userid) REFERENCES users(userid),
  FOREIGN KEY (idhosting) REFERENCES hosting(idhosting)
  ON DELETE CASCADE
  ON UPDATE CASCADE
);
