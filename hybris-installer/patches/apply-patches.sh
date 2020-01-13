#!/sbin/sh

set -e

WD=$FILES/patches
cd $WD

for patch in `find . -name *.patch |sort`; do
    cd $ROOT/$(dirname $patch)
    patch -p1 < $WD/$patch
done

