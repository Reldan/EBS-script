!#/bin/bash
# formating EBS
grep -q ext3 /proc/filesystems || sudo modprobe ext3
sudo mkfs.ext3 /dev/sdf
echo "/dev/sdf /vol ext3 noatime 0 0" | sudo tee -a /etc/fstab
sudo mkdir -m 0700 /vol
sudo mount /vol