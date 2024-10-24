
#Quick Test
# Test for /dev/sdb
fio --name=quicktest_sdb --ioengine=libaio --rw=randrw --rwmixread=70 --bs=4k --size=100M --direct=1 --numjobs=1 --runtime=30 --time_based --group_reporting --filename=/dev/sdb --output=fio_quicktest_sdb.txt
# Test for /dev/sdc
fio --name=quicktest_sdc --ioengine=libaio --rw=randrw --rwmixread=70 --bs=4k --size=100M --direct=1 --numjobs=1 --runtime=30 --time_based --group_reporting --filename=/dev/sdc --output=fio_quicktest_sdc.txt


#Comprehensive Test
# Test for /dev/sdb
fio --name=comprehensive_test_sdb --ioengine=libaio --rw=randrw --rwmixread=70 --bs=4k --size=10G --direct=1 --numjobs=4 --runtime=300 --time_based --group_reporting --filename=/dev/sdb --output=fio_results_sdb.txt
# Test for /dev/sdc
fio --name=comprehensive_test_sdc --ioengine=libaio --rw=randrw --rwmixread=70 --bs=4k --size=10G --direct=1 --numjobs=4 --runtime=300 --time_based --group_reporting --filename=/dev/sdc --output=fio_results_sdc.txt
