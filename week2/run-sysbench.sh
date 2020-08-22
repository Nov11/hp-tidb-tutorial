#!/bin/bash
#创建表
sysbench --test=oltp --mysql-host=127.0.0.1 --mysql-port=4000 --mysql-user=root --mysql-password=test --mysql-db=test --oltp-table-size=1000000 --db-driver=mysql prepare
#跑测试
sysbench --test=oltp --oltp-point-selects --mysql-host=127.0.0.1 --mysql-port=4000 --mysql-user=root --mysql-password=test --mysql-db=test --max-time=180 --num-threads=3  --db-driver=mysql run