#!/bin/bash

DIRNAME=$1
ALG=$2
OUTNAME=$3
LOG="log.txt"
ALG="${ALG/gzip/z}"
ALG="${ALG/bzip/j}"

echo $DIRNAME
tar cfv$ALG - $DIRNAME 2> $LOG | openssl enc -e -aes256 -out $OUTNAME 2>> $LOG

