#!/usr/bin/env bats

@test "count 3 lines" {
  result="$(printf "a\nb\nc\n" | ./countlines)"
  [ "$result" = "3" ]
}

