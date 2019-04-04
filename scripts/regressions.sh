#!/usr/bin/env bash

set -e
REPO_ROOT="$(dirname "$0")"/..
mkdir -p $REPO_ROOT/test_results

for f in $REPO_ROOT/build/test/tools/ossfuzz/*_ossfuzz;
do
	name=$(basename $f)
	$f /solidity-fuzzing-corpus/"$name"_seed_corpus/* &>> $REPO_ROOT/test_results/$name.log
done
