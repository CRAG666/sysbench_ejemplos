#!/bin/bash

# sysbench --db-driver=mysql \
# 	--mysql-host=127.0.0.1 \
# 	--mysql-user=root \
# 	--mysql-password=123456 \
# 	--mysql-db=test \
# 	--table-size="$1" \
# 	--report-interval=10 \
# 	--time=300 \
# 	--threads=16 \
# 	--rand-type=uniform \
# 	--mysql-ignore-errors=all \
# 	--range_size=100 \
# 	--point_selects=10 \
# 	--mysql_storage_engine=InnoDB \
# 	--percentile=99 \
#   /usr/share/sysbench/oltp_read_write.lua run
#

sysbench oltp_read_only \
	--db-driver=mysql \
	--mysql-host=127.0.0.1 \
	--mysql-user=root \
	--mysql-password=123456 \
	--mysql-db=test \
	--table-size=1000000 \
	--report-interval=10 \
	--time=60 \
	--threads=16 \
	--rand-type=uniform \
	--mysql-ignore-errors=all \
	--mysql-ssl=off \
	--histogram=on \
	--percentile=99 \
	--range-size=100 \
	--point-selects=10 \
	run
