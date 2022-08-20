#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE TABLE PROJECT (
      I_ID integer PRIMARY KEY ,
      S_NAME VARCHAR(500),
      S_TYPE VARCHAR(50),
      DT_INSERTED TIMESTAMP,
      B_DATA bytea
  );

EOSQL