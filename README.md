1. Configure your environment

```
$ docker-compose build
```

2. Create the project

```
$ docker-compose run --rm web mix phx.new .
```

3. Change file permission
```
$ sudo chown -R $USER:$USER .
```

4. Configure your database DEV and TEST

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

5. Create database
```
$ docker-compose run --rm web mix ecto.create
```

6. Run the application

```
$ docker-compose up web
```

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.


7. CRUD example

```
$ docker-compose run --rm web bash
> mix phx.gen.html Accounts User users name:string username:string:unique
```
