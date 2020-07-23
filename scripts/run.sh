#!/bin/bash

#
# Run the backend crawling script, write results to main repo README,
# push update of main repo to github.
#
# This script only needs to be run by one person, so it's configured
# for a particular directory structure.
#

# setup
source ~/.bashrc
# export GIT_SSH_COMMAND='ssh -i ~/.ssh/robot_id_rsa'

# setup 1: update self (ensure running latest version of backend). note that we
# add "1> ~/.cronlog 2>&1" to redirect stderr to stdout and then redirect
# stdout to .cronlog. the first command creates a fresh .cronlog by doing > and
# the next ones append to it with >>.
cd ~/bdatasets-backend 1> ~/.cronlog 2>&1
git pull --rebase origin master 1>> ~/.cronlog 2>&1

# step 2: run crawler
conda activate bdatasets 1>> ~/.cronlog 2>&1
python check.py \
    --directory /projects/bdata/datasets \
    --out-file ~/bdatasets/README.md \
    --log-file ~/bdatasets/BUILD.txt \
    --doc-dir ~/bdatasets/doc \
    --plot-dest ~/bdatasets/disk-usage.svg
conda deactivate

# setp 3: push updated doc
cd ~/bdatasets/
git add .
git commit -m "update `date '+%m/%d/%Y %H:%M:%S'`" 1>> ~/.cronlog 2>&1
git pull --regbase origin master 1>> ~/.cronlog 2>&1
git push origin master 1>> ~/.cronlog 2>&1
