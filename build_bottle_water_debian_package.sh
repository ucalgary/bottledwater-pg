#!/usr/bin/env bash
#

echo "+----------------------------+"
echo "|Temporary script            |"
echo "|Need a more delicated script|"
echo "+----------------------------+"
###
###
ORG_DIR=$(pwd)
PACK_DIR=bottledwater-0.4
EXECUTABLE=bottledwater

make clean && make
mkdir -p ${PACK_DIR}/DEBIAN
mkdir -p ${PACK_DIR}${ORG_DIR}/kafka
mkdir -p ${PACK_DIR}/etc/init.d/
cp ${ORG_DIR}/DEBIAN/CLIENT_DEBIAN/control ${PACK_DIR}/DEBIAN/
cp -avr ${ORG_DIR}/kafka/${EXECUTABLE} ${PACK_DIR}${ORG_DIR}/kafka
cp -avr ${ORG_DIR}/bottledwater ${PACK_DIR}/etc/init.d/
dpkg --build ${PACK_DIR}
rm -rf ${PACK_DIR}

###
###
echo "+----------------------------+"
echo "|Temporary script            |"
echo "|Need a more delicated script|"
echo "|            DONE            |"
echo "+----------------------------+"
