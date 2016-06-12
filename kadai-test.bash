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
rm -f $tmp-*

#TEST2
echo 2 > $tmp-ans
./16445112 320 12 > $tmp-out || ERROR_EXIT "TEST2-BASH"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST2-DIFF"
rm -f $tmp-*

#TEST END
exit 0
