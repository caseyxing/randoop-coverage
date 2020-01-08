#!/bin/bash
# Taken from https://gitlab.cs.washington.edu/randoop/pascali-coverage/blob/master/README.md

set -e
export JAVA_HOME=`dirname $(dirname $(readlink -f $(which javac)))`
cd $HOME

git clone https://github.com/randoop/pascali-coverage.git
cd pascali-coverage
git checkout dockerfile
mkdir -p evaluation/coverage
mkdir -p evaluation/logs
mkdir logs
git clone https://github.com/aas-integration/integration-test2.git
# or if you wish to use ssh: git clone git@github.com:aas-integration/integration-test2.git
(cd integration-test2 && git pull && ./fetch_dependencies.sh && ./fetch_corpus.py)
(cd extractcoverage && ./gradlew assemble)

echo "Pascali setup complete"
