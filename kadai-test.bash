#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
  echo "$1" > &2
  rm -f $tmp-*
  exit 1
}

#TEST1
echo "test"

#TEST END
exit 0
