#!/usr/bin/env bash
set -o errexit -o nounset -o pipefail

rm -rf target/doc
rm -rf docs/
cargo doc --lib --no-deps
cp -r target/doc docs
