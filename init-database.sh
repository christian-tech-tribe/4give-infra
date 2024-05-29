#!/bin/bash

. .env

docker exec 4give-postgres-1 psql -U $POSTGRES_ROOT_USER -d postgres -c "REVOKE ALL PRIVILEGES on tablespace pg_default from $POSTGRES_USER;"
docker exec 4give-postgres-1 psql -U $POSTGRES_ROOT_USER -d postgres -c "DROP DATABASE fourgive;"
docker exec 4give-postgres-1 psql -U $POSTGRES_ROOT_USER -d postgres -c "DROP USER $POSTGRES_USER;"

docker exec 4give-postgres-1 psql -U $POSTGRES_ROOT_USER -d postgres -c "CREATE USER $POSTGRES_USER WITH PASSWORD '$POSTGRES_PASS';"
docker exec 4give-postgres-1 psql -U $POSTGRES_ROOT_USER -d postgres -c "ALTER USER $POSTGRES_USER CREATEDB;"
docker exec 4give-postgres-1 psql -U $POSTGRES_ROOT_USER -d postgres -c "GRANT ALL on tablespace pg_default to $POSTGRES_USER;"
docker exec 4give-postgres-1 psql -U $POSTGRES_ROOT_USER -d postgres -c "CREATE DATABASE fourgive WITH OWNER = $POSTGRES_USER;"

