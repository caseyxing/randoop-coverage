#!/bin/bash
# Steps 1-4 from https://github.com/rjust/defects4j/blob/master/README.md#steps-to-set-up-defects4j

set -e
cd $HOME

git clone https://github.com/rjust/defects4j
cd defects4j
./init.sh

echo 'export PATH=$PATH:$HOME/defects4j/framework/bin' >> $HOME/.bashrc
source $HOME/.bashrc

export PATH=$PATH:$HOME/defects4j/framework/bin

defects4j info -p Lang

echo "Defects4J setup complete"
