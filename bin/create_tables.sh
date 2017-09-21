#!/bin/bash
export SQL_CREATE_DIR="${HOME}/scripts/nvvoterregistration/sql_create_tables/"
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvvoterregistration -f ${SQL_CREATE_DIR}eligiblevoters.sql
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvvoterregistration -f ${SQL_CREATE_DIR}voterhistory.sql
psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvvoterregistration -f ${SQL_CREATE_DIR}indexes.sql
