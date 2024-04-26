include .env


build:
	docker-compose build

up:
	docker-compose --env-file .env up -d

down:
	docker-compose --env-file .env down

restart:
	make down && make up

psql_create:
	docker exec -it de_psql psql postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_DB} -f /tmp/load_dataset/psql_schemas.sql -a

psql_load:
	docker exec -it de_psql psql postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_DB} -f /tmp/load_dataset/psql_load.sql -a

to_psql:
	docker exec -it de_psql psql postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_DB}

export_env:
	export $(grep -v '^#' env | xargs)

run:
	dbt run ./brazillian_ecom