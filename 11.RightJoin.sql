SELECT users_userid, idhosting, hostingplan, hostingprice, hostinglocation  FROM users_has_hosting uh RIGHT JOIN hosting h ON uh.hosting_idhosting=h.idhosting GROUP BY 3
