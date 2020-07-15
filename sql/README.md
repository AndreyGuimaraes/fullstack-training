
# Running

```sh
# run postgres using docker
docker run --name pg-docker --rm -d -p 5432:5432 -v $HOME/docker/volumes/postgres:/var/lib/postgresql/data postgres:10
# run migrations
flyway -configFiles=./flyway.conf migrate
# enter psql terminal
psql -h localhost -U postgres -d blog-training

# Execute sql files
psql -h localhost -U postgres -d blog-training -f ./fixture/users-fixture.sql
psql -h localhost -U postgres -d blog-training -f ./queries/get-user.sql
```

# Create database

```sh
createdb blog-training -h localhost -U postgres
```

# List commands
- `\dt`: list tables
- `\d users`: describe table (*users* in this case)

# About flyway
Flyway is a tool to automatically manage migrations, using SQL files directly.
It uses a [name convention][1] to keep migration versioning. It creates a table (`flyway_schema_history`) that keeps track of migrations and executes only the ones needed.

[1]: https://flywaydb.org/documentation/migrations#sql-based-migrations
