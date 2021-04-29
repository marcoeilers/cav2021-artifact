#!/bin/bash
cd /home/artifact/nagini
pytest -s src/nagini_translation/tests.py --functional --silicon
