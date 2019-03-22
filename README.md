# sql-book-reading

## Setup

### Docker イメージをビルドする

```
docker build -t sql-book-reading .
```

### Docker コンテナを起動する

```
docker run -p 15432:5432 --rm -it sql-book-reading
```

コンテナの停止、破棄は Ctrl + C で行う。

再起動は同じ docker run コマンドで行う（ビルドは一度だけで可）。

## Usage

任意の Postges クライアントから以下の接続情報でアクセスできる。

* Host: localhost
* Port: 15432
* User: postgres
* Password: password
* Database: postgres