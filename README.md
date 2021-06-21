# Introductory to our Chat app

A personal project to learn the product-level workflow, enchance our knowledge about networking and software architecture. 

## Getting start
Install docker if you don't have one. Go to the repo root directory and run `docker-compose up`

### Setting up the Database schema
The database management system we use is PostgreSQL, so if you want to change the schema or query the database, pgAdmin 4 is a great choice.

We use golang-migrate libary to perform schema migration. Please check [Golang-Migrate](https://github.com/golang-migrate/migrate) for more infomation. After installing their CLI version, you can run these command to create preparation for the migration.
```
$ migrate -source sql/migration -database postgres://localhost:5432/chat-at
```
We do have the migration-file in those folder, and a Makefile to automation the migrat up/down. If you on Window and don't have access to the make tool, check out this SO thread: [How to run a makefile in Windows?](https://stackoverflow.com/questions/2532234/how-to-run-a-makefile-in-windows). If you are on Linux-based OS, you should have enough tool to play.

Now run the docker file. Migrating the schema up by running commands:

```
$ make createdb
$ make migrate-up
```

To drop the schema and the database, simply state:
```
$ make migrate-down
$ make dropdb
```
