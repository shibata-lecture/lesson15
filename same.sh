#!/bin/bash

# 失敗時の処理
# 引数の数のチェック
#   引数が２より少ない場合
#   エラー終了、"ERROR: input 2 argments"

# 引数が数値かどうかのチェック
#   引数が数値か判定
#   エラー終了、"ERROR: input natural numbers"


# 一致判定
#   数値の比較if
if [ $1 -eq $2 ] ; then
	echo "$1 is equal to $2"
else
	echo "$1 is not equal to $2"
fi


