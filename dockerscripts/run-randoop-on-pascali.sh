#!/bin/bash

set -e

now = `date +"%m_%d_%Y"`
cd $HOME/pascali-coverage
bash ./run_dyntrace.sh 2>&1 | tee dyntrace-$now.log
(cd integration-test2/corpus/catalano && ln -s Catalano.Image/dljc-out dljc-out)
bash ./coverage.sh 2>&1 | tee coverage-$now.log

./show-coverage.pl 2>&1 | tee show-coverage-$now.log
