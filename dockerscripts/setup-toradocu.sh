#!/bin/bash

set -e
#export JAVA_HOME=`dirname $(dirname $(readlink -f $(which javac)))`
cd $HOME

git clone https://github.com/randoop/toradocu-coverage.git
cd toradocu-coverage
git checkout dockerfile
mkdir -p evaluation/coverage
mkdir -p evaluation/logs
mkdir -p toradocu/logs
cd extractcoverage
./gradlew assemble
cd ..

./fetch_and_compile_corpus
echo "Toradocu setup complete"
