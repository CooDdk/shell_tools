#!/bin/bash
now_month=`date +%y_%m`
echo $now_month


last_month=`date -d "-1 month" +%y_%m`

echo $last_month
tar_file_prefix=`date -d"-1 month days" +%Y_%m`
tar_file=${tar_file_prefix}.log.tar.gz
source_file=*${last_month}_*.log
echo ${source_file}
cd /opt/www/test1/ && tar -zcvf ${tar_file} ${source_file} && rm -rf ${source_file}

#cd /opt/www/test2/
#tar -zcvf $tar_file *$last_month_*.log && rm -rf *$last_month__*.log

echo '备份完成'
