# Remove files from your hard drives
# when you delete a file frome your drive you are not removing the contents of that file from your device you are just removing the reference to it from your file system
# and the contents are still on your hard drives untill they are overwritten
# shread overwrites everything on your hard drive so there is no way your old information can be recovered
# test on a virtual machine

# go into sudo user mode
sudo su

# list your drives
fdisk -l


# delete the disk (overwrites the files 3 times by default)
shred -v /dev/sdb

