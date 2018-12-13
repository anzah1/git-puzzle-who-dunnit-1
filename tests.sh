#!/bin/bash
source code.sh

# parameters: test_name, function, test
assert() {
  echo -ne "$1:\t\t"
  test $(eval "$2") $3
  if [[ $? -eq 0 ]];then
    echo -e '\e[32mOK\e[39m'
  else
    echo -e '\e[91mFAIL\e[39m'
    exit 1
  fi
}
assert "1+1 = 2" "sum" "= 2"
