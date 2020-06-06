# docker-goose

Docker container for [pressly/goose](https://github.com/pressly/goose)

## Usage

`/migrations` inside the container is a default directory that goose will expect to contain migrations.

```
docker run --rm \
	-v "$(pwd)/host-directory-with-migrations:/migrations" \
	artsafin:goose-migrations DRIVER DBSTRING COMMAND
```

See original [Usage](https://github.com/pressly/goose#usage) on syntax.

## Examples

### Create new migration

```
docker run --rm \
	-v "$(pwd)/host-directory-with-migrations:/migrations" \
	artsafin:goose-migrations mysql "root:root@tcp(server:3306)/dbname" create my-new-migration sql
```

### Status

```
docker run --rm \
	-v "$(pwd)/host-directory-with-migrations:/migrations" \
	artsafin:goose-migrations mysql "root:root@tcp(server:3306)/dbname" status
```

### Up

```
docker run --rm \
	-v "$(pwd)/host-directory-with-migrations:/migrations" \
	artsafin:goose-migrations mysql "root:root@tcp(server:3306)/dbname" up
```
