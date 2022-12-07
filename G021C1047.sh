#!/bin/bash
function error() {
    error_str = "error(" + "$1" + ")"
    if expr $1 = 0 >&/dev/null;then
        echo $error_str + " Two arguments are required. Usage: G021C1047.sh NUMBER NUMBER" >&2
    else
        echo $error_str + " Invalid argument. Usage: G021C1047.sh NUMBER NUMBER" >&2
    fi
}
if expr $# = "2" >&/dev/null;then
    expr $1 + $2 >&/dev/null
    if expr $? = 1 >&/dev/null;then
        error 1
        exit 1
    elif expr $1 > $2 >&/dev/null;then
        echo "bigger:" + "$1"
    else
        echo "bigger:" + "$2"
    fi
    echo "sum:" + `expr $1 + $2`
else
    error 0
    exit 1
fi