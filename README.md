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

## Log into the web container

```
$ docker-compose exec web bash
```
