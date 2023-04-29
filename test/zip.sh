
cd /test

lrzdir=/test/data
tar cvf $lrzdir.tar $lrzdir

lrzip -Ubvvp `nproc` -S .bzip2-lrz -L 9 $lrzdir.tar
lrzip --lzma -Uvvp `nproc` -S .lrz -L 9 $lrzdir.tar
lrzip -z -Uvvp `nproc` -S .zpaq -L 9 $lrzdir.tar

ls -lah /test
rm -fv $lrzdir.tar



