#!/bin/bash
# https://github.com/rjust/defects4j/blob/master/framework/test/README.md#randoop-coverage-on-the-defects4j-defects

set -e
cd $HOME/defects4j/framework/test

export PATH=$PATH:$HOME/defects4j/framework/bin
now = `date +"%m_%d_%Y"`
./randoop_coverage.sh 2>&1 | tee randoop-coverage-$now.log
../util/show_coverage.pl 2>&1 | tee show-coverage-$now.log
