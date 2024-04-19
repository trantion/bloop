#!/bin/bash

rm -rf /Users/tanchengxin/work_for_platform/tmp/index-dir/*
cargo build -p bleep
cargo run -p bleep --features color-eyre -- --index-dir /Users/tanchengxin/work_for_platform/tmp/index-dir --source-dir /Users/tanchengxin/work_for_platform/bloop --model-dir /Users/tanchengxin/work_for_platform/bloop/model
