# Baukis2 - Config Files for Docker Compose

## Setting up

```
$ git clone -b docker-compose https://github.com/kuroda/baukis2.git
$ cd baukis2
```

## Generate the Rails Skeleton

```
$ docker-compose run web rails new . --force --skip-bundle --database=postgresql
```

On Linux, you should change owner of generated files.

```
$ sudo chown -R $USER:$USER .
```
