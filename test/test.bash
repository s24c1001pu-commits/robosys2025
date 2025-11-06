#!/bin/bash
# 正常入力のテスト
out=$(seq 5 | ./minus)
[ "$out" = "-15" ] || { echo "test failed: expected -15, got $out"; exit 1; }

# 異常入力のテスト（数字でない入力）
out=$(echo あ | ./minus)
[ "$?" != "0" ] && echo "passed error test"
