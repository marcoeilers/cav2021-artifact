#!/bin/bash
set -x
cd /home/artifact/nagini
nagini --ignore-obligations --benchmark=8 tests/sif-prob/verification/examples/no_obligations/secc-cav2019.py
nagini --ignore-obligations --benchmark=8 tests/sif-prob/verification/examples/no_obligations/secc-cddc.py
nagini --ignore-obligations --benchmark=8 tests/sif-prob/verification/examples/no_obligations/secc-ct.py
nagini --ignore-obligations --benchmark=8 tests/sif-true/verification/examples/no_obligations/secc-db.py
nagini --ignore-obligations --benchmark=8 tests/sif-true/verification/examples/no_obligations/secc-encrypt.py


