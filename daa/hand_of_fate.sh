#!/bin/bash

while [ -e /proc/$1 ]; do sleep 0.1; done
kill $2
