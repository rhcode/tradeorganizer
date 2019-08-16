# tradeorganizer

### Setting up mysql docker
``` 
docker pull mysql/mysql-server:8.0
docker run -d --name mysql-server -p 3306:3306 mysql/mysql-server:8.0
docker logs mysql-server 2>&1 | grep GENERATED
docker exec -it mysql-server mysql -u root -p

alter user 'root'@'localhost' identified by 'root';
create user 'webuser'@'%' identified with mysql_native_password by 'webuser';
grant all privileges on *.* to 'webuser'@'%';
```
