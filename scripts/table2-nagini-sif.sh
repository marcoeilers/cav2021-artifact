#!/bin/bash
set -x
cd /home/artifact/nagini
nagini --sif=prob --ignore-obligations --benchmark=6 tests/sif-prob/verification/examples/no_obligations/secc-cav2019.py
nagini --sif=prob --ignore-obligations --benchmark=3 tests/sif-prob/verification/examples/no_obligations/secc-cddc.py
nagini --sif=prob --ignore-obligations --benchmark=6 tests/sif-prob/verification/examples/no_obligations/secc-ct.py
nagini --sif=true --ignore-obligations --benchmark=3 tests/sif-true/verification/examples/no_obligations/secc-db.py
nagini --sif=true --ignore-obligations --benchmark=6 tests/sif-true/verification/examples/no_obligations/secc-encrypt.py


