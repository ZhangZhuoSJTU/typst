#!/bin/bash
# ProgramBench-style build: must produce ./executable at the repo root.
# typst is a workspace; the CLI is crates/typst-cli (binary `typst`).
set -e
cd "$(dirname "$0")"
cargo build --release -p typst-cli
cp "target/release/typst" executable
