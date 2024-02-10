# Cloud Engineering Linux Commands codes (First Assignment)

-  mkdir code tests personal misc
- A. cd /home/altschool/tests
- B. cd ./tests
- C. echo "Hello A" > ./misc/fileA
- D. touch /home/altschool/misc/fileB, base64 /dev/urandom | head -c 500 > ./misc/fileB
- E. cp ./misc/fileA ./misc/fileC
- F. mv ./misc/fileB ./misc/fileD
- G. tar -cvf misc.tar misc
- H. gzip misc.tar
- I. sudo useradd jake, sudo passwd --expire jake
- J. sudo passwd -l jake
- K. sudo useradd -s /sbin/nologin terry
- L. sudo vi /etc/ssh/sshd_config. Then change 'PasswordAuthentication' to 'no'
- M. sudo vi /etc/ssh/sshd_config. Change 'PermitRootLogin' to 'no'