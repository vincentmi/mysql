# mysql
MYSQL5.7 with GMT+8

## setting

datadir = /var/lib/mysql
root_password = root

## using

```sh
docker  run -d --name mysql57_2 --restart always  -p 3307:3306 -v /Users/vincentmi/data/mysql57_2:/var/lib/mysql  -e MYSQL_ROOT_PASSWORD=root mysql57

```
