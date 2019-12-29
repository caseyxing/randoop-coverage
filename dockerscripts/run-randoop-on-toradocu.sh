#!/bin/bash

set -e

now = `date +"%m_%d_%Y"`
cd $HOME/toradocu-coverage
./run_randoop_on_corpus 2>&1 | tee randoop-on-corpus-$now.log

./coverage.sh 2>&1 | tee coverage-$now.log
./show-coverage.pl 2>&1 | tee show-coverage-$now.log
