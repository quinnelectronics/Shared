sudo mkdir -p /mnt/pronghorn_share
sudo mount -t cifs -o username=your_username,password=your_password //PRONGHORN/public /mnt/pronghorn_share
sudo mount -t cifs -o //PRONGHORN/public /mnt/pronghorn_share

#Quick Test

fio --name=quicktest_sdb --ioengine=libaio --rw=randrw --rwmixread=70 --bs=4k --size=100M --direct=1 --numjobs=1 --runtime=30 --time_based --group_reporting --filename=/dev/sdb --output=fio_quicktest_sdb.txt && fio --name=quicktest_sdc --ioengine=libaio --rw=randrw --rwmixread=70 --bs=4k --size=100M --direct=1 --numjobs=1 --runtime=30 --time_based --group_reporting --filename=/dev/sdc --output=fio_quicktest_sdc.txt


#Comprehensive Test

fio --name=comprehensive_test_sdb --ioengine=libaio --rw=randrw --rwmixread=70 --bs=4k --size=10G --direct=1 --numjobs=4 --runtime=300 --time_based --group_reporting --filename=/dev/sdb --output=fio_results_sdb.txt && fio --name=comprehensive_test_sdc --ioengine=libaio --rw=randrw --rwmixread=70 --bs=4k --size=10G --direct=1 --numjobs=4 --runtime=300 --time_based --group_reporting --filename=/dev/sdc --output=fio_results_sdc.txt
