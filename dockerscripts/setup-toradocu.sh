#!/bin/bash

set -e
cd $HOME

git clone git@gitlab.cs.washington.edu:randoop/toradocu-coverage.git
cd toradocu-coverage
mkdir -p evaluation/coverage
mkdir -p evaluation/logs
mkdir -p toradocu/logs
cd extractcoverage
./gradlew assemble
cd ..

./fetch_and_compile_corpus
echo "Toradocu setup complete"
