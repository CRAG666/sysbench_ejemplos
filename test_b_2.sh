#!/bin/bash

sysbench --db-driver=mysql --mysql-host=<HOST> --mysql-port=<PORT> --mysql-user=<USER> --mysql-password=<PASSWORD> --mysql-db=<DB> --table-size=<TABLE SIZE> --tables=<NUM OF TABLES> --threads=<NUM OF THREADS> --time=<DURATION> --report-interval=<REPORT INTERVAL> oltp_write_only.lua prepare
sysbench --db-driver=mysql --mysql-host=<HOST> --mysql-port=<PORT> --mysql-user=<USER> --mysql-password=<PASSWORD> --mysql-db=<DB> --table-size=<TABLE SIZE> --tables=<NUM OF TABLES> --threads=<NUM OF THREADS> --time=<DURATION> --report-interval=<REPORT INTERVAL> oltp_write_only.lua run
sysbench --db-driver=mysql --mysql-host=<HOST> --mysql-port=<PORT> --mysql-user=<USER> --mysql-password=<PASSWORD> --mysql-db=<DB> --table-size=<TABLE SIZE> --tables=<NUM OF TABLES> --threads=<NUM OF THREADS> --time=<DURATION> --report-interval=<REPORT INTERVAL> oltp_write_only.lua cleanup

