
#Quick Test
#sdb sdc

fio --name=quicktest --ioengine=libaio --rw=randrw --rwmixread=70 --bs=4k --size=100M --direct=1 --numjobs=1 --runtime=30 --time_based --group_reporting --filename=/dev/sdb --filename=/dev/sdc --output=fio_quicktest_sdb_sdc.txt


#Comprehensive Test
#sdb sdc

fio --name=comprehensive_test --ioengine=libaio --rw=randrw --rwmixread=70 --bs=4k --size=10G --direct=1 --numjobs=4 --runtime=300 --time_based --group_reporting --filename=/dev/sdb --filename=/dev/sdc --output=fio_results_sdb_sdc.txt

