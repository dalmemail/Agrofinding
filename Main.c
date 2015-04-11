#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <mysql/mysql.h>

int readBD(char **argv);
int workBD(MYSQL_ROW row, int i);

int main(int argc, char **argv)
{
  if (argc == 2) {
    if (strcmp("--help", argv[1])==0) {
      printf("Use: %s name_db host_db user_db pass_db\n", argv[0]);
      printf("name_db: Name of the database. Example: database\n");
      printf("host_db: Host of the database. Example: localhost\n");
      printf("user_db: User of the database. Example: user\n");
      printf("pass_db: Password of the database. Example: password\n");
      return 0;
    }
  }
  if (argc != 5) {
    printf("Error\n");
    printf("Use: %s name_db host_db user_db pass_db\n", argv[0]);
    return -1;
  }
  switch (readBD(argv)) {
    case 1:
      printf("Error: Starting MySQL\n");
    break;
    case 2:
      printf("Error: Connecting to database.\n");
    break;
    case 0:
      printf("Reading database... OK\n");
    break;
  }
  return 0;
}

int readBD(char **argv)
{
  int i=0;
  MYSQL *database;
  //Try to start mysql
  if ((database = mysql_init(0)) == NULL) {
    //Error ?
    return 1;
  }
  //Conect to database
  if ((mysql_real_connect(database, argv[2], argv[3], argv[4], argv[1], MYSQL_PORT, NULL, 0)) == NULL) {
    return 2;
  }
  char *table = "select TEMP,TM,Tmin,PREC,HUM,NIEV,TOR,NIEB,HEL,DESP,SOL,cultivo from metereo,culter;";
  MYSQL_ROW row;
  if ((mysql_query(database, table))==0) {
    MYSQL_RES *resultado;
    while(row=mysql_fetch_row(resultado))
    {
      //printf("%s---%s\n", row[0], row[1]);
      i=i+1;
      
    }
  }
  mysql_close(database);
  workBD(row, i);
  return 0;
}

int workBD(MYSQL_ROW row, int i)
{
  int n[i];
  for (int p=0; p <= i; p++) {
    n[p] = 0;
  }
  for (int p=0; p <= i / 10; p++) {
    n[rand()] = 1;
  }
  /* Open the file */
  FILE *file;
  FILE *file2;
  file = fopen("agrofinding.test", "w");
  file2 = fopen("agrofinding.train", "w");
  for (int p=0; p <= i; p++) {
    if (n[p] == 0) {
      fwrite(row[p], sizeof(char*), 10, file);
      fwrite(" ", sizeof(char), 10, file);
    }
    else {
      fwrite(row[p], sizeof(char*), 10, file2);
      fwrite(" ", sizeof(char), 10, file2);
    }
  }
  /* Close the file */
  fclose(file);
  fclose(file2);
}
