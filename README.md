# Agrofinding
INSTALL DATABASE
----------------------
You can install a simple database using:
- $ mysql -u root -p
- mysql> CREATE DATABASE database;
- mysql> quit
- $ mysql -u root -p database < database.sql
INSTALL AGROFINDING
----------------------
To install Agrofinding you need:
- gcc
- libmysqlclient-dev (To work with mysql)
Compile and run Agrofinding:
- $ gcc Main.c -o agrofinding -I/usr/include/mysql -L/url/lib/mysql -lmysqlclient -lstdc++ -lz -std=c99
- $ ./agrofinding
You can get more information about how to use Agrofinding using:
- $ ./agrofinding --help
