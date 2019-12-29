#!/bin/bash
# Taken from https://gitlab.cs.washington.edu/randoop/pascali-coverage/blob/master/README.md

set -e
cd $HOME

git clone git@gitlab.cs.washington.edu:randoop/pascali-coverage.git
cd pascali-coverage
mkdir -p evaluation/coverage
mkdir -p evaluation/logs
mkdir logs
git clone https://github.com/aas-integration/integration-test2.git
# or if you wish to use ssh: git clone git@github.com:aas-integration/integration-test2.git
(cd integration-test2 && git pull && ./fetch_dependencies.sh && ./fetch_corpus.py)
(cd extractcoverage && ./gradlew assemble)

echo "Pascali setup complete"
