#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
  echo "$1" >&2
  rm -f $tmp-*
  exit 1
}

#TEST1
echo 5 > $tmp-ans
./16445112 10 5 > $tmp-out || ERROR_EXIT "TEST1-BASH"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-DIFF"

#TEST2
echo 4 > $tmp-ans
./16445112 320 12 > $tmp-out || ERROR_EXIT "TEST2-BASH"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST2-DIFF"

#TEST3
echo 100 > $tmp-ans
./16445112 100 100 > $tmp-out || ERROR_EXIT "TEST3-BASH"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST3-DIFF"

#TEST4
echo 引数を正しく入力してください > $tmp-ans
./16445112 > $tmp-out || ERROR_EXIT "TEST4-BASH"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST4-DIFF"

#TEST5
echo 引数を正しく入力してください > $tmp-ans
./16445112 > $tmp-out || ERROR_EXIT "TEST5-BASH"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST5-DIFF"

#TEST END
rm -f $tmp-*
exit 0
