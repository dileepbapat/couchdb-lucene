#!/bin/bash

cat >target/couchdb-lucene-control <<EOF
Package: couchdb-lucene
Version: 0.9.0
Maintainer: motech <motech-dev@googlegroups.com>
Files: ./couchdb-lucene /etc/init.d/
EOF

cd target/couchdb-lucene-0.9.0-dist;
mv couchdb-lucene-0.9.0/couchdb-lucene.deb ./couchdb-lucene;
for f in `find couchdb-lucene-0.9.0/ -type f`; { ff=`dirname $f`;echo " ${f} /usr/share/"; }>>../couchdb-lucene-control


equivs-build ../couchdb-lucene-control
cd ../..
