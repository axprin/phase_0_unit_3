# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

<!-- paste your terminal output here -->

## Release 1: Insert Data 
sqlite> INSERT INTO users (first_name, last_name, email, created_at, updated_at) VALUES ('Andy', 'Principe', 'andyprincipe@gmail.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;                                                    1|Kimmey|Lin|kimmy@devbootcamp.com|2014-05-14 02:14:03|2014-05-14 02:14:03
2|Andy|Principe|andyprincipe@gmail.com|2014-05-14 02:15:22|2014-05-14 02:15:22

## Release 2: Multi-line commands
sqlite> INSERT INTO users (first_name, last_name, email, created_at, updated_at) VALUES ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
Error: UNIQUE constraint failed: users.email
sqlite> INSERT INTO users (first_name, last_name, email, created_at, updated_at) VALUES ('Kimmey', 'Lin', 'kimmy@devbootcamp.com2', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;                                                    1|Kimmey|Lin|kimmy@devbootcamp.com|2014-05-14 02:14:03|2014-05-14 02:14:03
2|Andy|Principe|andyprincipe@gmail.com|2014-05-14 02:15:22|2014-05-14 02:15:22

## Release 3: Add a column
sqlite> UPDATE users SET nickname ='Kimchee' where first_name = 'Kimmey';
sqlite> SELECT * FROM users;
1|Kimmey|Lin|kimmy@devbootcamp.com|2014-05-14 02:14:03|2014-05-14 02:14:03|Kimchee
2|Andy|Principe|andyprincipe@gmail.com|2014-05-14 02:15:22|2014-05-14 02:15:22|
sqlite> UPDATE users SET nickname ='MEATBALL' where first_name = 'Andy';
sqlite> SELECT * FROM users;
1|Kimmey|Lin|kimmy@devbootcamp.com|2014-05-14 02:14:03|2014-05-14 02:14:03|Kimchee
2|Andy|Principe|andyprincipe@gmail.com|2014-05-14 02:15:22|2014-05-14 02:15:22|MEATBALL

## Release 4: Change a value
sqlite> UPDATE users SET first_name ='Kimmy', last_name ='Lin', nickname = 'Ninja Coder" where email = 'kimmy@devbootcamp.com';
sqlite> SELECT * FROM users;
1|Kimmey|Lin|kimmy@devbootcamp.com|2014-05-14 02:14:03|2014-05-14 02:14:03|Ninja Coder
2|Andy|Principe|andyprincipe@gmail.com|2014-05-14 02:15:22|2014-05-14 02:15:22|


## Release 5: Reflect
I think this was a good introduction to using SQL/SQLite. I had previous experience with SQL via SQL Server Management Studio, where it color codes everything for you, which I find to be much easier than using SQLite through the command line, but I know this will become easier with continued use. 