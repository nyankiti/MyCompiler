# .sh はシェルスクリプトを示す



#!/bin/bash
assert() {
  expected="$1"
  input="$2"

  ./9cc "$input" > tmp.s
  cc -o tmp tmp.s
  ./tmp
  actual="$?"

  if [ "$actual" = "$expected" ]; then
    echo "$input => $actual"
  else
    echo "$input => $expected expected, but got $actual"
    exit 1
  fi
}


# 第一引数が期待される値、第二引数が入力する値として、assert関数内で指定した実行ファイルを実行してくれる（テスト）
assert 0 0
assert 42 42
assert 21 "5+20-4"

echo OK