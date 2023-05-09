#!/bin/bash

sysbench --db-driver=mysql --mysql-host=localhost --mysql-user=root --mysql-password=mypassword --mysql-db=mydatabase --table-size=20000000 --tables=1 --threads=16 --time=60 --report-interval=10 /usr/share/sysbench/oltp_write_only.lua prepare

sysbench --db-driver=mysql --mysql-host=localhost --mysql-user=root --mysql-password=mypassword --mysql-db=mydatabase --table-size=20000000 --tables=1 --threads=16 --time=60 --report-interval=10 /usr/share/sysbench/oltp_write_only.lua run

sysbench --db-driver=mysql --mysql-host=localhost --mysql-user=root --mysql-password=mypassword --mysql-db=mydatabase --table-size=20000000 --tables=1 --threads=16 --time=60 --report-interval=10 /usr/share/sysbench/oltp_write_only.lua cleanup
