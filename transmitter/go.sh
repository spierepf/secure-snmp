#!/bin/bash

socat "TCP:localhost:161" EXEC:"ssh -oStrictHostKeyChecking=no daa@securesnmp_daa_1"
