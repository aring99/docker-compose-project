#!/bin/bash

# Test PostgreSQL connection
PGHOST=localhost
PGPORT=5432
PGUSER=root
PGPASSWORD=root
PGDATABASE=test_db

export PGPASSWORD=$PGPASSWORD

psql -h $PGHOST -p $PGPORT -U $PGUSER -d $PGDATABASE -c "SELECT 1"

