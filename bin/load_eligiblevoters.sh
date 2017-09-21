#!/bin/bash
CSV_PATH=$1
cat $CSV_PATH | psql --host=${AWS_PG_HOST} --port=5432 --username=acohen --dbname=nvvoterregistration -c "\copy eligiblevoters FROM '$CSV_PATH' with CSV NULL AS ''"
