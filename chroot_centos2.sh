mkdir -p {bin,usr/lib,usr/lib64}
cp /usr/bin/{bash,ls} bin
ldd /usr/bin/bash | egrep -o '/lib.*\.[0-9]'
list="$(ldd /usr/bin/bash | egrep -o '/lib.*\.[0-9]')"
for i in $list; do cp -v "$i" "/home/educafe/usr/lib/"; done

ldd /usr/bin/bash | egrep -o '/lib64/.*\.[0-9]'
list="$(ldd /usr/bin/bash | egrep -o '/lib64/.*\.[0-9]')"
for i in $list; do cp -v "$i" "/home/educafe/usr/lib64/"; done
#cp $list lib64

ldd /usr/bin/ls | egrep -o '/lib.*\.[0-9]'
list="$(ldd /usr/bin/ls | egrep -o '/lib.*\.[0-9]')"
for i in $list; do cp -v "$i" "/home/educafe/usr/lib/"; done

list="$(ldd /usr/bin/ls | egrep -o '/lib64/.*\.[0-9]')"
for i in $list; do cp -v "$i" "/home/educafe/usr/lib64/"; done
#cp $list lib64

sudo chroot /home/educafe /bin/bash
