CREATE TABLE CreditCard (id INTEGER PRIMARY KEY AUTOINCREMENT, cardtitle varchar(100), finaldigits varchar(4), bestbuydate varchar(10), flag varchar(50), valuelimit decimal, availablelimit decimal, usedlimit decimal);
CREATE TABLE ComercialPlace (id INTEGER PRIMARY KEY AUTOINCREMENT, description varchar(100), address varchar(100));
CREATE TABLE Category (id INTEGER PRIMARY KEY AUTOINCREMENT, description varchar(100));
CREATE TABLE Payment (id INTEGER PRIMARY KEY AUTOINCREMENT, description varchar(100), type varchar(20));
CREATE TABLE Expense (id INTEGER PRIMARY KEY AUTOINCREMENT, type varchar(20), description varchar(100), commercialplaceid int, categoryid int, paymentid int, installment int, date varchar(20), duedate varchar(20), value double);

  

