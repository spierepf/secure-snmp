#!/bin/bash

/home/daa/hand_of_fate.sh $PPID $$ &
exec socat STDIO TCP-LISTEN:$1,fork
