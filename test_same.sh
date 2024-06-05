#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
  echo $1 >&2
  rm -f $tmp-*
  exit 1
}


# test1: 引数不足の動作が正しいか
echo "ERROR: input 2 argments"  > ${tmp}-ans

# test2: 整数で無い場合の動作が正しいか


# test3: ちゃんとsameかどうかの判定ができるか
echo "1 is equal to 1" > ${tmp}-ans
./same.sh 1 1 > ${tmp}-result
diff ${tmp}-ans ${tmp}-result && echo "test3-1: PASS" || ERROR_EXIT "error in test3-1"

echo "100000 is equal to 10000"
echo "-1 is equal to -1"
echo "2 is not equal to 1"
echo "100000 is not equal to -1"

rm -f ${tmp}-*
