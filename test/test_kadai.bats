#!/usr/bin/env bats

# テスト用の一時ファイル作成
setup() {
    echo "Hello World" > test1.txt
    echo "こんにちは世界" > test2.txt
}

teardown() {
    rm -f test1.txt test2.txt
}

# ファイル入力テスト1
@test "kadai counts characters in test1.txt" {
    run ./kadai test1.txt
    [ "$status" -eq 0 ]
    [ "$output" -eq 12 ]  # "Hello World\n" は 12 文字
}

# ファイル入力テスト2（日本語）
@test "kadai counts characters in test2.txt" {
    run ./kadai test2.txt
    [ "$status" -eq 0 ]
    # "こんにちは世界\n" は 8 文字（改行含む）
    [ "$output" -eq 8 ]
}

# パイプ入力テスト
@test "kadai counts characters from pipe" {
    run echo "ABC" | ./kadai
    [ "$status" -eq 0 ]
    [ "$output" -eq 4 ]  # "ABC\n" は 4 文字
}

# 入力なしテスト
@test "kadai shows usage when no input" {
    run ./kadai
    [ "$status" -eq 1 ]
    [[ "$output" =~ Usage: ]]
}

