#!/bin/bash

kubectl run postgres-postgresql-client --rm --tty -i --restart='Never' --namespace postgres --image registry-1.docker.io/bitnami/postgresql:latest --env="PGPASSWORD=$POSTGRES_PASSWORD" \
      --command -- psql --host postgres-postgresql -U appuser -d appdb -p 5432
