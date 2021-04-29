#!/bin/bash
set -x
cd /home/artifact/nagini
nagini --sif=true --benchmark=8 tests/sif-true/verification/examples/banerjee.py
nagini --sif=true --benchmark=8 tests/sif-true/verification/examples/constanzo.py
nagini --sif=true --benchmark=8 tests/sif-true/verification/examples/darvas.py
nagini --sif=true --benchmark=8 tests/sif-true/verification/examples/example.py
nagini --sif=true --benchmark=8 tests/sif-true/verification/examples/example-decl.py
nagini --sif=true --benchmark=8 tests/sif-true/verification/examples/example-term.py
nagini --sif=true --benchmark=8 tests/sif-true/verification/examples/joana-fig1-tl.py
nagini --sif=true --benchmark=8 tests/sif-true/verification/examples/joana-fig2-bl.py
nagini --sif=true --benchmark=8 tests/sif-true/verification/examples/joana-fig2-t.py
nagini --sif=true --benchmark=8 tests/sif-true/verification/examples/joana-fig3-bl.py
nagini --sif=true --benchmark=8 tests/sif-true/verification/examples/joana-fig3-br.py
nagini --sif=true --benchmark=8 tests/sif-true/verification/examples/joana-fig3-tl.py
nagini --sif=true --benchmark=8 tests/sif-true/verification/examples/joana-fig3-tr.py
nagini --sif=true --benchmark=8 tests/sif-true/verification/examples/joana-fig13-l.py
nagini --sif=true --benchmark=8 tests/sif-true/verification/examples/kusters.py
nagini --sif=true --benchmark=8 tests/sif-true/verification/examples/naumann.py
nagini --sif=true --benchmark=8 tests/sif-true/verification/examples/product.py
nagini --sif=true --benchmark=8 tests/sif-true/verification/examples/smith.py
nagini --sif=true --benchmark=8 tests/sif-true/verification/examples/terauchi-fig1.py
nagini --sif=true --benchmark=8 tests/sif-true/verification/examples/terauchi-fig3.py
nagini --sif=true --benchmark=8 tests/sif-true/verification/examples/terauchi-fig4.py
nagini --sif=true --benchmark=8 tests/sif-true/verification/examples/cav2021-fig4.py
nagini --sif=poss --benchmark=8 --ignore-obligations tests/sif-poss/verification/examples/no_obligations/cav2021-fig11.py
nagini --sif=poss --benchmark=8 tests/sif-poss/verification/examples/cav2021-fig12.py
nagini --sif=poss --benchmark=8 --ignore-obligations tests/sif-poss/verification/examples/no_obligations/cav2021-fig7.py
nagini --sif=poss --benchmark=8 --ignore-obligations tests/sif-poss/verification/examples/no_obligations/cav2021-fig8.py
nagini --sif=poss --benchmark=8 tests/sif-poss/verification/examples/cav2021-fig9.py

