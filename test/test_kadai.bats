#!/usr/bin/env bats
# SPDX-License-Identifier: GPL-3.0-only
# Copyright (c) 2025 Takuto

setup() {
    echo "Hello World" > test1.txt
    echo "こんにちは世界" > test2.txt
}

teardown() {
    rm -f test1.txt test2.txt
}

@test "kadai counts characters in test1.txt" {
    run ./kadai test1.txt
    [ "$status" -eq 0 ]
    [ "$output" -eq 12 ]
}

@test "kadai counts characters in test2.txt (Japanese)" {
    run ./kadai test2.txt
    [ "$status" -eq 0 ]
    [ "$output" -eq 8 ]
}

@test "kadai counts characters from pipe" {
    run echo "ABC" | ./kadai
    [ "$status" -eq 0 ]
    [ "$output" -eq 4 ]
}

@test "kadai shows usage when no input" {
    run ./kadai
    [ "$status" -eq 1 ]
    [[ "$output" =~ Usage: ]]
}
}

