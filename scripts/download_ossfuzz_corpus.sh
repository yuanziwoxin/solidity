#!/usr/bin/env sh
set -e

(
    cd /
    git clone --depth 1 https://github.com/ethereum/solidity-fuzzing-corpus.git
)
