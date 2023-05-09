#!/bin/bash

sysbench --db-driver=mysql \
	--mysql-host=127.0.0.1 \
	--mysql-user=root \
	--mysql-password=123456 \
	--mysql-db=test \
	--table-size="$1" \
	--tables=1 \
	--threads=16 \
	--time=60 \
	--report-interval=10 \
	/usr/share/sysbench/oltp_insert.lua prepare

sysbench --db-driver=mysql \
	--mysql-host=127.0.0.1 \
	--mysql-user=root \
	--mysql-password=123456 \
	--mysql-db=test \
	--table-size="$1" \
	--tables=1 \
	--threads=16 \
	--time=60 \
	--report-interval=10 \
	/usr/share/sysbench/oltp_insert.lua run

sysbench --db-driver=mysql \
	--mysql-host=127.0.0.1 \
	--mysql-user=root \
	--mysql-password=123456 \
	--mysql-db=test \
	--table-size="$1" \
	--tables=1 \
	--threads=16 \
	--time=60 \
	--report-interval=10 \
	/usr/share/sysbench/oltp_insert.lua cleanup
