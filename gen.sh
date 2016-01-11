#!/bin/bash

#set -x
set -e

# ensure haveged is running

dir=`mktemp -d`
curdir=`pwd`
GPG=/usr/bin/gpg

function cleanup {
    set -x
    rm -rf $dir
}
trap cleanup EXIT


pushd $dir
cat $curdir/stdin | $GPG --batch --gen-key
$GPG --keyring ./myring.pub --secret-keyring ./myring.sec --list-secret-keys
KEY=$($GPG --keyring ./myring.pub --secret-keyring ./myring.sec --list-secret-keys | grep sec | cut -d/ -f2 | cut -d' ' -f1 | grep -v myring.sec)

popd

mkdir -p output/$KEY
mv $dir/myring.* output/$KEY
echo output/$KEY
