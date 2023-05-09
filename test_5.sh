#!/bin/bash

sysbench oltp_read_only \
	--mysql-host=127.0.0.1 \
	--mysql-user=root \
	--mysql-password=123456 \
	--mysql-db=test \
	--table-size=$1 \
	--tables=1 \
	--db-driver=mysql \
	--mysql-ignore-errors=all \
	--rand-type=uniform \
	--report-interval=10 \
	--time=60 \
	--threads=16 \
	--skip-trx=on \
	--range-size=100 \
	run
