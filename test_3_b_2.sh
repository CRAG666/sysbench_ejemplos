#!/bin/bash

sysbench oltp_read_write \
	--mysql-host=127.0.0.1 \
	--mysql-user=root \
	--mysql-password=123456 \
	--mysql-port=3306 \
	--mysql-db=test \
	--tables=1 \
  --threads=4 \
	--table-size="$1" \
	prepare

sysbench oltp_read_write \
	--threads=16 \
	--events=0 \
	--time=60 \
	--mysql-host=127.0.0.1 \
	--mysql-user=root \
	--mysql-password=123456 \
	--mysql-port=3306 \
	--mysql-db=test \
	--tables=1 \
	--delete_inserts=10 \
	--index_updates=10 \
	--non_index_updates=10 \
	--table-size="$1" \
	--db-ps-mode=disable \
	--report-interval=1 \
	run
