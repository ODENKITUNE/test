#!/bin/bash
function error() {
    error_str="error("$1")"
    if [ $1 -eq 0 ];then
        echo $error_str " Two arguments are required. Usage: G021C1047.sh NUMBER NUMBER" >&2
    else
        echo $error_str " Invalid argument. Usage: G021C1047.sh NUMBER NUMBER" >&2
    fi
    exit 1
}
if [ $# -eq 2 ];then
    expr $1 + $2 &>/dev/null || error 1
    if [ $1 -gt $2 ];then
        echo "bigger:$1"
    else
        echo "bigger:$2"
    fi
    echo "sum:" `expr $1 + $2`
else
    error 0
fi
