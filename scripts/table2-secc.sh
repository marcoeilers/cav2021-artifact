#!/bin/bash
set -x
cd /home/artifact/secc
time ./SecC.sh examples/case-studies/cav2019.c
time ./SecC.sh examples/case-studies/cddc.c
time ./SecC.sh examples/case-studies/ct.c
time ./SecC.sh examples/case-studies/db.c
time ./SecC.sh examples/case-studies/encrypt.c

