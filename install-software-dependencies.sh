#!/bin/bash

apt-get -qq update
apt-get -qqy install apt-utils wget

# Randoop dependencies
# https://randoop.github.io/randoop/manual/dev.html#prerequisites
apt-get -qqy install git gradle default-jdk
apt-get -qqy install perl python-pip
pip install html5validator

# Pascali has no additional dependencies
# https://gitlab.cs.washington.edu/randoop/pascali-coverage/blob/master/README.md

# Toradocu dependencies (maven)
# https://gitlab.cs.washington.edu/randoop/toradocu-coverage/blob/master/README.md#prerequisites
apt-get -qqy install maven

# Defects4J dependencies (java, git, svn, perl)
# https://github.com/rjust/defects4j#requirements
apt-get -qqy install subversion perl

# Download Randoop release jars (latest)
cd $HOME
