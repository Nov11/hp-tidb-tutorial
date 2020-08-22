#!/bin/bash
./bin/go-ycsb load mysql -P workloads/workloada -p readcount=1000000000 -p mysql.host=127.0.0.1 -pmysql.port=4000 --threads 256 -pmysql.password=test

./bin/go-ycsb run mysql -P workloads/workloada -p readcount=1000000000 -p mysql.host=127.0.0.1 -pmysql.port=4000 --threads 256 -pmysql.password=test