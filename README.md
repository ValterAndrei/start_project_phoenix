## Configure your environment

```
$ chmod +x run.sh
$ docker-compose build
```

## Create the project

```
$ docker-compose run --rm web mix phx.new .
```

## Configure your database DEV and TEST

```
config :app, App.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "",
  database: "app_dev",
  hostname: "db",
  pool_size: 10
```

```
config :app, App.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "",
  database: "app_test",
  hostname: "db",
  pool: Ecto.Adapters.SQL.Sandbox
```

## Run the application

```
$ docker-compose up web
```

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.


## CRUD example

```
> mix phx.gen.html Accounts User users name:string username:string:unique
```
