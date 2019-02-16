# Baukis2 - Config Files for Docker Compose

## 環境構築

```
% git clone -b docker-compose https://github.com/kuroda/baukis2.git
% cd baukis2
% ./setup.sh
```

## コンテナの起動

```
% docker-compose up -d
```

## コンテナにログイン

```
% docker-compose exec web bash
```

## Railsアプリケーションの開発作業を始める

### 最初から始める場合

```
$ cd /apps
$ rails new baukis2 -BJS -d postgresql
```

### 最終版から始める場合

```
$ cd /apps
$ rm -rf baukis2
$ git clone -b master https://github.com/kuroda/baukis2.git
```
