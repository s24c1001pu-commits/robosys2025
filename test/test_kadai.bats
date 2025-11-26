#!/usr/bin/env bats

# ファイル入力で文字数カウント
@test "file input" {
  echo "hello" > test1.txt
  run ../kadai test1.txt
  [ "$status" -eq 0 ]
  [ "$output" -eq 6 ]  # 文字数 5 + 改行 1 = 6
  rm test1.txt
}

# パイプ入力で文字数カウント
@test "pipe input" {
  run echo "hello" | ../kadai
  [ "$status" -eq 0 ]
  [ "$output" -eq 6 ]
}

# 入力なしでエラーになること
@test "no input" {
  run ../kadai
  [ "$status" -eq 1 ]
  [[ "$output" == *"Usage"* ]]
}

